#!/usr/bin/env bash

# bash strict settings
set -o errexit # exit on errors
set -o nounset # exit on use of uninitialized variable
set -o pipefail

MY_PACKAGE='@liquid-labs/policy-staff'

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
POLICY_COUNT=$(cd node_modules/@liquid-labs && find -L policy-* \( -path "policy-*/policy/*" -o -path "policy-*/src/docs/*" \) -name "*.md" -not -path "*/node_modules/*" -not -path "*/.yalc/*" | wc -l | awk '{print $1}')
mkdir .build test-out
for PROJ in projects; do
  npm explore @liquid-labs/policy-${PROJ} -- cat ./test/settings.sh >> .build/settings.sh
done
cat ./test/settings.sh >> .build/settings.sh

echo -n "Test document parsing: "
"${BIN}/liq-init-docs" run test-out > /dev/null || { echo "FAIL"; EXIT=1; }
make -f .build/main.makefile --silent || { echo "FAIL"; EXIT=1; }
if (( $EXIT == 0 )); then echo "PASS"; fi

EXPECT_OUT=$(( $POLICY_COUNT + 1 )) # because generated Glossary.md
echo -n "Expect $EXPECT_OUT files; "
OUT_FILES=$(find test-out -type f | wc -l | awk '{print $1}')
echo -n "found $OUT_FILES: "
if (( $OUT_FILES == $EXPECT_OUT )); then
  echo "PASS"
else
  echo "FAIL (found $OUT_FILES)"
  EXIT=1
fi

exit $EXIT
