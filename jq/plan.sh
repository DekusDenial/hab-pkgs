pkg_name=jq
pkg_origin=anonymous
pkg_description="Lightweight and flexible command-line JSON processor (Mirror)"
pkg_version=1.6
pkg_maintainer="DekusDenial <dekusdenial@hotmail.com>"
pkg_license=('ICU')
pkg_source="https://github.com/stedolan/$pkg_name/releases/download/${pkg_name}-${pkg_version}/jq-linux64"
pkg_upstream_url="https://stedolan.github.io/jq/"
pkg_shasum=af986793a515d500ab2d35f8d2aecd656e764504b789b66d7e1a0b727a124c44
pkg_deps=()
pkg_build_deps=(core/coreutils core/wget)
pkg_bin_dirs=(bin)

do_unpack() {
  return 0
}

do_build() {
  return 0
}

do_install() {
  install -D "$HAB_CACHE_SRC_PATH"/"$pkg_filename" "$pkg_prefix"/bin/jq
}
