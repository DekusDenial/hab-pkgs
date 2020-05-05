pkg_name=docker-rootless-extras
pkg_origin=anonymous
pkg_description="The Docker Engine Rootless Extras (Mirror)"
pkg_version=19.03.8
pkg_maintainer="DekusDenial <dekusdenial@hotmail.com>"
pkg_license=('Apache-2')
pkg_source="https://download.docker.com/linux/static/stable/x86_64/${pkg_name}-${pkg_version}.tgz"
pkg_upstream_url=https://docs.docker.com/engine/installation/binaries/
pkg_shasum=f7f15f61026fbf006cf1e719c99bd4b0c2a34dc9507f280fc77b4fa3e7eb1979
pkg_dirname=docker-rootless-extras
pkg_bin_dirs=(bin)
pkg_build_deps=(anonymous/docker)

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
