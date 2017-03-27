# Screen::Params
#
# Params pattern
class screen::params {

  # package to install
  $package_name     = 'screen'

  # default screenrc to copy
  $screenrc_source  = 'puppet:///modules/screen/screenrc'

  case $facts['os']['family'] {

    'Debian', 'RedHat', 'SuSE': {
      $screenrc = '/etc/screenrc'
      $owner    = 'root'
      $group    = 'root'
    }

    'windows': {
      $screenrc = 'c:\cygwin\etc\screenrc'
      $owner    = 'Administrator'
      $group    = 'Users'
    }

    default: { fail("Module: #{module_name} doesn't support OS Family '${facts['os']['family']}' yet") }
  }
}
