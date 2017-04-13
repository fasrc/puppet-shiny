# Class: rshiny::service
# manage the shiny service
#
class rshiny::service inherits rshiny::params (
  $service_name   = $rshiny::params::service_name,
  $enabled        = $rshiny::params::service_enabled,
  $ensure         = $rshiny::params::service_ensure,
  $pkg_require    = $rshiny::params::pkg_name
  $config_require = $rshiny::params::config_file
) {
  service { $service_name :
    ensure    => $service_ensure,
    enable    => $service_enable,
    require   => [ Package[$require], File[$config_require], ],
    subscribe => File[$config_require],
  }

}
