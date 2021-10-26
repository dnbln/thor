{ pkgs, dev-commons ? import ./dev-commons.nix { inherit pkgs; } }:

with dev-commons.commons;
dev-commons.createToolchain {
  target = targets.musl;
  toolchain = nightly;
}
