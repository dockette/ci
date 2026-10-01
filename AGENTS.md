# Docker Build Platform Notes

## Building for Multiple Platforms

When building Docker images, it's important to consider the target platform architecture.

### Default Platform in Makefile

The Makefile currently defaults to `linux/amd64`:

```makefile
DOCKER_PLATFORM?=linux/amd64
```

### Building for ARM64 (Apple Silicon)

If you're on an ARM64 system (Apple Silicon Macs), you should override the platform:

```bash
make build-node24 DOCKER_PLATFORM=linux/arm64
```

Or export it as an environment variable:

```bash
export DOCKER_PLATFORM=linux/arm64
make build-node24
```

### Building for AMD64 (Intel/x86_64)

For Intel-based systems or when building for AMD64 servers:

```bash
make build-node24 DOCKER_PLATFORM=linux/amd64
```

### Building for Both Platforms

To build multi-platform images (for pushing to Docker Hub):

```bash
docker buildx build \
  --platform linux/amd64,linux/arm64 \
  --pull \
  --push \
  -t dockette/ci:node24 \
  ./node24
```

**Note**: Multi-platform builds with `--push` require pushing to a registry. For local builds, use `--load` with a single platform.

### Quick Local Build

For quick local testing, you can use `--load` with your native platform:

```bash
# Detects your platform automatically
docker buildx build --load -t dockette/ci:node24 ./node24
```

## Testing

Each image has a smoke test in `.scripts/test.sh`. To test an image, build it
first, then run the script with the image directory name:

```bash
# 1. Build the image and load it into the local Docker
docker buildx build --load -t dockette/ci:node24 ./node24

# 2. Run the smoke test
.scripts/test.sh node24
```

The script starts the image and prints `ok` or `FAIL` for each check. It exits
with 1 if any check fails.

To test an image with a different tag, pass the tag as the second argument:

```bash
.scripts/test.sh php84 my-local/ci:php84
```

What the script checks:

- `phpXX`: PHP version, PHP starts without warnings, main extensions, `phpxd`, `composer`
- `nodeXX`: Node.js version, `npm`, `pnpm` (node18 and newer)
- `ansitest`: `ansible`, `ansible-lint`, `yamllint`, `molecule`, `docker`, `community.docker` collection
- all images: `bash`, `git`, `curl`, `make`

`make test` builds and tests `php84`, `node24` and `ansitest` in one step.

## Platform Detection

To check your current platform:

```bash
uname -m  # arm64 or x86_64
docker version --format '{{.Server.Arch}}'  # aarch64 or x86_64
```
