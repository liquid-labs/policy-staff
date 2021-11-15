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
EXPECTED_DOCS=$(cd node_modules/@liquid-labs && find -L policy-* \( -path "policy-*/policy/*" -o -path "policy-*/src/docs/*" \) \( -name "*.md" -o -name "*.mmd" \) -not -path "*/node_modules/*" -not -path "*/.yalc/*" | sed -E 's/[^/]+\/[^/]+\///' | sort)
POLICY_COUNT=$(echo "${EXPECTED_DOCS}" | wc -l | awk '{print $1}')
mkdir .build test-out
for PROJ in projects; do
  npm explore @liquid-labs/policy-${PROJ} -- cat ./test/settings.sh >> .build/settings.sh
done
cat ./test/settings.sh >> .build/settings.sh

echo -n "Test document parsing: "
"${BIN}/liq-init-docs" run test-out > /dev/null || { echo "FAIL"; EXIT=1; }
make -f .build/main.makefile --silent || { echo "FAIL"; EXIT=1; }
if (( $EXIT == 0 )); then echo "PASS"; fi

echo -n "Expect ${POLICY_COUNT} files; "
OUT_FILES=$(find test-out -type f -not -name "Glossary.md" | sed -E 's/[^/]+\///' | sort)
OUT_COUNT=$(echo "${OUT_FILES}" | wc -l | awk '{print $1}')
echo -n "found ${OUT_COUNT}: "
if (( ${OUT_COUNT} == ${POLICY_COUNT} )); then
  echo "PASS"
else
  diff -u <(echo "${EXPECTED_DOCS}") <(echo "${OUT_FILES}")
  echo "FAIL (found $OUT_FILES)"
  EXIT=1
fi

exit $EXIT
