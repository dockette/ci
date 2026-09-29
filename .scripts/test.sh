#!/usr/bin/env bash
#
# Smoke test for one dockette/ci image.
#
# Usage: .scripts/test.sh <item> [image]
#   item   directory name, for example php84, node24 or ansitest
#   image  image to test (default: dockette/ci:<item>)
#
set -uo pipefail

ITEM="${1:?Usage: $0 <item> [image]}"
IMAGE="${2:-dockette/ci:${ITEM}}"
FAILED=0

# Run a shell command in the image and print its output.
run() {
	docker run --rm "${IMAGE}" sh -c "$1" 2>&1
}

# check <name> <command>: the command must exit with 0.
check() {
	local out
	if out="$(run "$2")"; then
		echo "ok   $1: $(echo "${out}" | head -n 1)"
	else
		echo "FAIL $1"
		echo "${out}" | sed 's/^/     /'
		FAILED=1
	fi
}

# expect <name> <command> <value>: the command output must be equal to the value.
expect() {
	local out
	out="$(run "$2")"
	if [ "${out}" = "$3" ]; then
		echo "ok   $1: ${out}"
	else
		echo "FAIL $1: expected '$3', got:"
		echo "${out}" | sed 's/^/     /'
		FAILED=1
	fi
}

test_common() {
	check "tools" "for t in bash git curl make; do command -v \$t >/dev/null || { echo \"missing \$t\"; exit 1; }; done"
}

test_php() {
	local version="${ITEM#php}"

	expect "php version" "php -r 'echo PHP_MAJOR_VERSION . PHP_MINOR_VERSION;'" "${version}"
	# A broken extension prints a startup warning, but php still exits with 0.
	check "php startup" "out=\$(php -v 2>&1) && echo \"\$out\" | head -n 1 && ! echo \"\$out\" | grep -iE 'warning|error|unable to load|failed loading'"
	check "php extensions" "m=\$(php -m) && for e in ctype curl gd iconv intl openssl pdo_mysql pdo_pgsql pdo_sqlite zip; do echo \"\$m\" | grep -qix \$e || { echo \"missing \$e\"; exit 1; }; done && echo all"
	check "phpxd" "phpxd -v | grep -i xdebug"
	check "composer" "composer --version"
	test_common
}

test_node() {
	local version="${ITEM#node}"

	check "node" "node --version"
	expect "node major version" "node -p 'process.versions.node.split(\".\")[0]'" "${version}"
	check "npm" "npm --version"
	if [ "${version}" -ge 18 ]; then
		check "pnpm" "pnpm --version"
	fi
	test_common
}

test_ansitest() {
	check "ansible" "ansible --version"
	check "ansible-lint" "ansible-lint --version"
	check "yamllint" "yamllint --version"
	check "molecule" "molecule --version"
	check "docker" "docker --version"
	check "collections" "ansible-galaxy collection list community.docker"
	test_common
}

echo "Testing ${IMAGE}"

case "${ITEM}" in
	php*) test_php ;;
	node*) test_node ;;
	ansitest) test_ansitest ;;
	*) echo "No tests for ${ITEM}"; exit 1 ;;
esac

exit "${FAILED}"
