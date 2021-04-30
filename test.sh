#!/usr/bin/env bash

# bash strict settings
set -o errexit # exit on errors
set -o nounset # exit on use of uninitialized variable
set -o pipefail

MY_PACKAGE='@liquid-labs/policy-staff'

SETTINGS="$(cat <<EOF
HAS_SENSITIVE_DATA=1
TRACKS_STAFF=1
GEN_SEC_LVL=3
HR_COMPLIANCE_AGENCY=Gusto
ORG_CHART='https://foo.com'

INTERNAL_SUPPORT_NUMBER=555-555-5555
INTERNAL_SUPPORT_EMAIL=help@acme.com

MANAGES_NETWORK=0
MANAGES_PHYSICAL_NETWORK=0
MANAGES_CLOUD_NETWORK=0

MANAGES_DEVICES=0

# for policy-security
COMPANY_EMAIL_DOMAIN='foo.com'
HAS_CARDHOLDER_DATA=1
HAS_CENTRAL_ENDPOINT_PROTECTION=1
ANTI_VIRUS_CLIENT='Sophos Home client'
CENTRAL_ENDPOINT_PROTECTION='Sophos Home client'
MASTER_STAFF_LOG='https://foo.com/master-staff-log'
TRACKS_APPROVED_TECHNOLOGIES=1
PRODUCTION_AND_SENSITIVE_TECHNOLOGIES='https://foo.com/approved-tech-inventory'
COMPONENT_UPDATE_CYCLE='monthly'
PASSWORD_MANAGER='KeePassXC'
PASSWORD_MANAGER_MACOS_INSTALL_URL='http://foo.com'
PASSWORD_MANAGER_EXTENSION_URL='https://foo.com/ext'
PASSWORD_MANAGER_WINDOWS_10_INSTALL_URL='http://foo.com/win'
EOF
)"

cleanup() {
  echo -n "Cleaning up... "
  rm node_modules/${MY_PACKAGE}
  echo "done."
}

trap cleanup EXIT

BIN="$(npm bin)"
EXIT=0

echo "Preparing..."
rm -rf .build test-out
ln -s "$PWD" node_modules/${MY_PACKAGE}
POLICY_COUNT=$(cd node_modules/@liquid-labs && find -L . -path "./policy-*" -name "*.md" -not -path "*/node_modules/*" -not -path "*/.yalc/*" | wc -l | awk '{print $1}')
mkdir .build
echo "${SETTINGS}" > .build/settings.sh

echo -n "Test document parsing: "
"${BIN}/liq-init-docs" run test-out > /dev/null || { echo "FAIL"; EXIT=1; }
make -f .build/main.makefile --silent || { echo "FAIL"; EXIT=1; }
if (( $EXIT == 0 )); then echo "PASS"; fi

echo -n "Expect $POLICY_COUNT files; "
OUT_FILES=$(find test-out -type f | wc -l | awk '{print $1}')
echo -n "found $OUT_FILES: "
if (( $OUT_FILES == $POLICY_COUNT )); then
  echo "PASS"
else
  echo "FAIL (found $OUT_FILES)"
  EXIT=1
fi

exit $EXIT
