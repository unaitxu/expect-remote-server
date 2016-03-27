#!/usr/bin/expect

# expect-remote-server
# If I can't use a SSH Key

# Set timeout to 60, default is 10 and it may be not enough
set timeout 60

# spawn ssh command for the expect
spawn ssh -t root@host.com

# Expect yes/no for adding ssh key and then expect login
expect "yes/no" {
  send "yes\r"
  expect "*?assword" { send "PASSWORD\r" }
  } "*?assword" { send "PASSWORD\r" }
  
# Send a pwd command when logged
expect "*#"
send "pwd\r"

# Interact to continue on the ssh, else, autodisconnects
interact
