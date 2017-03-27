# Screen
#
# Install and configure GNU Screen
#
# @param package_name Name of the GNU Screen package
# @param screenrc Target file to copy supplied screenrc to
# @param owner File owner for screenrc
# @param group File group for screenrc
# @param screenrc_source Source to download screenrc from, for use with Puppet's `file` resource
class screen(
  $package_name     = $screen::params::package_name,
  $screenrc         = $screen::params::screenrc,
  $owner            = $screen::params::owner,
  $group            = $screen::params::group,
  $screenrc_source  = $screen::params::screenrc_source,
) inherits screen::params {

    # Include OS specific configuration items
    include screen::params

    # Only install the package if we are not on Windows
    if $facts['os']['family'] != "windows" {
      # TODO:  Might be possible to install directly into cygwin... - worth
      # looking at?
      package { $package_name:
        ensure => present,
        before => File[$screenrc],
      }
    }

    file { $screenrc:
      ensure => file,
      mode   => '0644',
      owner  => $owner,
      group  => $group,
      source => $screenrc_source,
    }
}
