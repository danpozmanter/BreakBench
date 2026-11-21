# Builds the images in dependency order.
set -e
docker compose build base
docker compose build base_clang rust nodejs java dotnet
docker compose build
