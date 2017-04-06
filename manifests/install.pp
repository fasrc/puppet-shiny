# Class: rshiny::install
# install the pkgs
#
class rshiny::install inherits rshiny::params (
  $pkg_name = $rshiny::params::pkg_name,


  ){
    include ::r

    r::package {'shiny': }

    package { $pkg_name:
      ensure  => present,
      require => R::Package['shiny'],
    }

}
