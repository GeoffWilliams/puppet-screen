# BATS test file to run after executing 'examples/init.pp' with puppet.
#
# For more info on BATS see https://github.com/sstephenson/bats

# Tests are really easy! just the exit status of running a command...
@test "screen installed" {
  rpm -q screen
}

@test "screenrc installed" {
  grep "puppet managed" /etc/screenrc
}
