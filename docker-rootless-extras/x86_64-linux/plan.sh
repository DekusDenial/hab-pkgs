pkg_name=docker-rootless-extras
pkg_origin=package
pkg_description="The Docker Engine Rootless Extras (Mirror)"
pkg_version=20.10.14
pkg_maintainer="DekusDenial"
pkg_license=('Apache-2')
pkg_source="https://download.docker.com/linux/static/stable/x86_64/${pkg_name}-${pkg_version}.tgz"
pkg_upstream_url=https://docs.docker.com/engine/installation/binaries/
pkg_shasum=d47be8ef7c10748f3815304ce3deca3939655a5c5fcabeef97a76d579b8165f4
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

# Skip stripping down the Go binaries
do_strip() {
    return 0
}
