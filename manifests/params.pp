# Class: rshiny::params
#
#
class rshiny::params {
  $pro           = false
  $pkg_download  = true
  $pkg_name      = 'shiny-server'
  $pkg_version   = '1.5.3.838'
  $pkg_url_base  = 'https://download3.rstudio.org'
  case $::osfamily {
      'RedHat': {
        $pkg_type = 'rpm'
        $pkg_url  = "${pkg_url_base}/$pkg_url_flavor/${::architecture}/${pkg_name}-${pkg_version}-${pkg_url_family}-${::architecture}.${pkg_type}"

        if $pro {
          $pkg_url_flavor = 'centos6.3'
          $pkg_url_family = 'rh6'
        }
           else {
            $pkg_url_flavor = 'centos5.9'
            $pkg_url_family = 'rh5'
          }
        }
      }
}
