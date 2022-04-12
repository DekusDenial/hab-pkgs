pkg_name=docker-buildx
pkg_origin=package
pkg_description="Docker Buildx is a CLI plugin"
pkg_version=0.8.2
pkg_maintainer="DekusDenial"
pkg_license=('Apache-2')
pkg_source="https://github.com/docker/buildx/releases/download/v${pkg_version}/buildx-v${pkg_version}.linux-amd64"
pkg_upstream_url=https://github.com/docker/buildx
pkg_shasum=c64de4f3c30f7a73ff9db637660c7aa0f00234368105b0a09fa8e24eebe910c3
pkg_deps=(package/docker)
pkg_bin_dirs=(bin)

do_unpack() {
  return 0
}

do_build() {
    return 0
}

do_install() {
    # chmod a+x "$HAB_CACHE_SRC_PATH"/"$pkg_filename"
    # cp "$HAB_CACHE_SRC_PATH"/"$pkg_filename" /usr/local/lib/docker/cli-plugins/docker-buildx
    install -v -D "$HAB_CACHE_SRC_PATH"/"$pkg_filename" "$pkg_prefix"/bin/docker-buildx
}

# Skip stripping down the Go binaries
do_strip() {
    return 0
}
