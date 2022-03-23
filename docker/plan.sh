pkg_name=docker
pkg_origin=anonymous
pkg_description="The Docker Engine (Mirror)"
pkg_version=20.10.13
pkg_maintainer="DekusDenial <dekusdenial@hotmail.com>"
pkg_license=('Apache-2')
pkg_source="https://download.docker.com/linux/static/stable/x86_64/${pkg_name}-${pkg_version}.tgz"
pkg_upstream_url=https://docs.docker.com/engine/installation/binaries/
pkg_shasum=39edf7c8d773939ff5e4d318ae565691a9c7e754ed768e172757e58898fb7079
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
