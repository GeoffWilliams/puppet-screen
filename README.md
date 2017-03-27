[![Build Status](https://travis-ci.org/GeoffWilliams/puppet-screen.svg?branch=master)](https://travis-ci.org/GeoffWilliams/puppet-screen)
# screen

#### Table of Contents

1. [Description](#description)
1. [Usage - Configuration options and additional functionality](#usage)
1. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
1. [Limitations - OS compatibility, etc.](#limitations)
1. [Development - Guide for contributing to the module](#development)

## Description

Install and configure GNU Screen

## Usage

### Default configuration

```puppet
include screen
```

Install GNU Screen using the default configuration

### Custom configuration

```puppet
class { "screen":
  screenrc_source => "puppet:///modules/somemodule/screenrc",
}
```

Install GNU Screen with a `screenrc` file supplied in another module

## Reference
Reference documentation is generated directly from source code using [puppet-strings](https://github.com/puppetlabs/puppet-strings).  You may regenerate the documentation by running:

```shell
bundle exec puppet strings
```

Or you may view the current [generated documentation](https://rawgit.com/GeoffWilliams/screen/master/doc/index.html).

The documentation is no substitute for reading and understanding the module source code, and all users should ensure they are familiar and comfortable with the operations this module performs before using it.

## Limitations
* Does not install the `screen` package on Windows, only the configuration file
* Not supported by Puppet, Inc.

## Development

PRs accepted :)

## Testing
This module supports testing using [PDQTest](https://github.com/GeoffWilliams/pdqtest).


Test can be executed with:

```
bundle install
bundle exec pdqtest all
```

See `.travis.yml` for a working CI example
