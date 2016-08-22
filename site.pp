file {'/tmp/example-ip':                                            # resource type file and filename
  ensure  => present,                                               # make sure it exists
  mode    => '0644',                                                # file permissions
  content => "Here is my Public IP Address: ${ipaddress_eth0}.\n",  # note the ipaddress_eth0 fact
}

package { 'nginx' :  ensure => installed }
package { 'strace' : ensure => installed }
package { 'tmux' :   ensure => installed }

service { 'nginx' :  ensure => running }
