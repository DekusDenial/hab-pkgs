pkg_name=docker-aarch64
pkg_origin=package
pkg_description="The Docker Engine (Mirror)"
pkg_version=20.10.14
pkg_maintainer="DekusDenial"
pkg_license=('Apache-2')
pkg_source="https://download.docker.com/linux/static/stable/aarch64/${pkg_name}-${pkg_version}.tgz"
pkg_upstream_url=https://docs.docker.com/engine/installation/binaries/
pkg_shasum=ea971edc1179088bfd25edd04a0c12848143d15cb8202ebb93a6a08973464fd0
pkg_dirname=docker
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
