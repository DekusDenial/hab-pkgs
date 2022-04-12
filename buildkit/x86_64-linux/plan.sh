pkg_name=buildkit
pkg_origin=package
pkg_description="Moby BuildKit"
pkg_version=0.10.1
pkg_maintainer="DekusDenial"
pkg_license=('Apache-2')
pkg_source="https://github.com/moby/buildkit/releases/download/v${pkg_version}/buildkit-v${pkg_version}.linux-amd64.tar.gz"
pkg_upstream_url=https://github.com/moby/buildkit
pkg_shasum=14d1e0cd76167dae24232bb336384e770aa7c91819df69922e0d3c0d54ddb8de
pkg_dirname=bin
pkg_deps=(package/docker)
pkg_bin_dirs=(bin)

do_build() {
    return 0
}

do_install() {
    for bin in *; do
        install -v -D "${bin}" "${pkg_prefix}/bin/${bin}"
    done
}

# Skip stripping down the Go binaries
do_strip() {
    return 0
}
