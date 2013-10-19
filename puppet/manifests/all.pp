# Puppet manifest for my PHP dev machine
Exec { path => [ "/bin/", "/sbin/" , "/usr/bin/", "/usr/sbin/" ] }

class { 'epel': }
include remi

class phpdevweb {
    if ($enable_nfs) {
        require server::nfs
    }

    class { server::yum:
        enable_yum_update => $enable_yum_update,
    }

	require server::misc
	include server::iptables
	include server::phpdev
	include server::httpd

	#include phpmyadmin

#	file { "/tmp/facts.yaml":
#        content => inline_template("<%= scope.to_hash.reject { |k,v| !( k.is_a?(String) && v.is_a?(String) ) }.to_yaml %>"),
#    }

    class { server::php:
        php_version => $php_version,
    }

    class { server::db:
        ip_addresses => $ip_addresses,
    }

}

include phpdevweb

class redis {
    package { "redis":
        ensure => 'latest',
        require => Yumrepo['remi'],
    }
    service { "redis":
        enable => true,
        ensure => running,
    }
}
include redis

class gearman {
    package { "gearman":
        ensure => 'latest',
        require => Yumrepo['remi'],
    }
    service { "gearmand":
        enable => true,
        ensure => running,
    }
    exec { "main":
        command => "gearmand -d",
        path => "/usr/bin:/usr/sbin:/bin:/usr/local/bin",
        require => Package["gearman"]
    }
}
include gearman
