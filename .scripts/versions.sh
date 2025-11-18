#!/bin/bash

# Script to collect Node.js and npm versions from Docker images
# Usage: .scripts/versions.sh [--no-build]
#
# Options:
#   --no-build  Skip building images that don't exist locally

set -e

DOCKER_IMAGE="dockette/ci"
BUILD_MISSING=true

# Parse arguments
while [[ $# -gt 0 ]]; do
    case $1 in
        --no-build)
            BUILD_MISSING=false
            shift
            ;;
        *)
            echo "Unknown option: $1"
            echo "Usage: $0 [--no-build]"
            exit 1
            ;;
    esac
done

# Array of node versions to check
NODE_VERSIONS=(15 16 17 18 19 20 21 22 23 24)

# Detect platform
PLATFORM=$(uname -m)
if [ "$PLATFORM" = "arm64" ] || [ "$PLATFORM" = "aarch64" ]; then
    DOCKER_PLATFORM="linux/arm64"
else
    DOCKER_PLATFORM="linux/amd64"
fi

echo "Collecting Node.js and npm versions..." >&2
echo "Platform: ${DOCKER_PLATFORM}" >&2
echo "Auto-build missing images: ${BUILD_MISSING}" >&2
echo "========================================" >&2
echo "" >&2

for version in "${NODE_VERSIONS[@]}"; do
    tag="node${version}"
    echo "Checking ${DOCKER_IMAGE}:${tag}..." >&2

    # Check if image exists locally
    if ! docker image inspect "${DOCKER_IMAGE}:${tag}" &> /dev/null; then
        if [ "$BUILD_MISSING" = true ]; then
            echo "  Image not found. Building..." >&2
            if [ -d "${tag}" ]; then
                docker buildx build --platform "${DOCKER_PLATFORM}" --load -t "${DOCKER_IMAGE}:${tag}" "./${tag}" >&2
                echo "  Build complete!" >&2
            else
                echo "  Directory ${tag} not found. Skipping..." >&2
                echo "${version}|N/A|N/A|N/A"
                continue
            fi
        else
            echo "  Image not found locally. Skipping..." >&2
            echo "  Run: make build-${tag} DOCKER_PLATFORM=${DOCKER_PLATFORM} to build this image" >&2
            echo "" >&2
            echo "${version}|N/A|N/A|N/A"
            continue
        fi
    fi

    # Get Node.js version
    node_version=$(docker run --rm "${DOCKER_IMAGE}:${tag}" node --version 2>/dev/null || echo "N/A")
    # Get npm version
    npm_version=$(docker run --rm "${DOCKER_IMAGE}:${tag}" npm --version 2>/dev/null || echo "N/A")
    # Get pnpm version (if available)
    pnpm_version=$(docker run --rm "${DOCKER_IMAGE}:${tag}" pnpm --version 2>/dev/null || echo "N/A")

    echo "  Node.js: ${node_version}" >&2
    echo "  npm: ${npm_version}" >&2
    echo "  pnpm: ${pnpm_version}" >&2
    echo "" >&2

    # Output to stdout
    echo "${version}|${node_version}|${npm_version}|${pnpm_version}"
done

echo "========================================" >&2
echo "Version collection complete!" >&2