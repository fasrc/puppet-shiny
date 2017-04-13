# Class: rshiny::config
# manages the rshiny service config
#
class rshiny::config inherits rshiny::params (
  $config_file    = $rshiny::params::config_file,
  $config_ensure  = $rshiny::params::config_ensure,
  $config_owner   = $rshiny::params::config_owner,
  $config_group   = $rshiny::params::config_group,
  $config_mode    = $rshiny::params::config_mode,
  $service_user   = $rshiny::params::service_user,
  $global_options = $rshiny::params::global_options,
  $servers        = $rshiny::params::servers,
  $locations      = $rshiny::params::locations,
  ){
  file { $config_file :
    ensure  => $config_ensure,
    owner   => $config_owner,
    group   => $config_group,
    mode    => $config_mode,
    content => template("${module_name}/shiny-server.conf.erb"),
    require => Package[$rshiny::params::pkg_name],
  }
}
