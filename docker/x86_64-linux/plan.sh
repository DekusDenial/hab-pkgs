pkg_name=docker
pkg_origin=package
pkg_description="The Docker Engine (Mirror)"
pkg_version=20.10.14
pkg_maintainer="DekusDenial"
pkg_license=('Apache-2')
pkg_source="https://download.docker.com/linux/static/stable/x86_64/${pkg_name}-${pkg_version}.tgz"
pkg_upstream_url=https://docs.docker.com/engine/installation/binaries/
pkg_shasum=7ca4aeeed86619909ae584ce3405da3766d495f98904ffbd9d859add26b83af5
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

# Skip stripping down the Go binaries
do_strip() {
    return 0
}
