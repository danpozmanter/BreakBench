# Builds breakbench:gossamer from a local Gossamer checkout instead of a release.
# Usage: sh build-gossamer-local.sh [checkout-or-bundle-dir]
# A checkout has target/release/gos and its runtime archives under target/; a bundle
# directory holds gos, libgossamer_runtime.a and libgossamer_runtime-musl.a side by side.
set -e
SRC=${1:-$HOME/dev/gossamer}
STAGE=cache/gossamer-local
rm -rf "$STAGE"
mkdir -p "$STAGE/bin" "$STAGE/lib"
if [ -f "$SRC/gos" ]; then
    cp "$SRC/gos" "$STAGE/bin/gos"
    cp "$SRC/libgossamer_runtime.a" "$SRC/libgossamer_runtime-musl.a" "$STAGE/lib/"
else
    cp "$SRC/target/release/gos" "$STAGE/bin/gos"
    cp "$SRC/target/release/libgossamer_runtime.a" "$STAGE/lib/libgossamer_runtime.a"
    cp "$SRC/target/x86_64-unknown-linux-musl/release/libgossamer_runtime.a" "$STAGE/lib/libgossamer_runtime-musl.a"
fi
docker build -f docker/gossamer-local -t breakbench:gossamer "$STAGE"
docker run --rm breakbench:gossamer gos --version
