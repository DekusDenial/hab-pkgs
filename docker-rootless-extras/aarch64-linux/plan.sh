pkg_name=docker-rootless-extras-aarch64
pkg_origin=package
pkg_description="The Docker Engine Rootless Extras (Mirror)"
pkg_version=20.10.14
pkg_maintainer="DekusDenial"
pkg_license=('Apache-2')
pkg_source="https://download.docker.com/linux/static/stable/aarch64/${pkg_name}-${pkg_version}.tgz"
pkg_upstream_url=https://docs.docker.com/engine/installation/binaries/
pkg_shasum=144b6912d77109179551f22b5c77dcc0621fd7ceb6b2576613f820fe9839d95c
pkg_dirname=docker-rootless-extras
pkg_bin_dirs=(bin)

do_build() {
    return 0
}

do_install() {
    ls -lah
    for bin in *; do
        install -v -D "${bin}" "${pkg_prefix}/bin/${bin}"
    done
}

do_strip() {
    return 0
}
