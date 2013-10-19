# Puppet manifest for my PHP dev machine
Exec { path => [ "/bin/", "/sbin/" , "/usr/bin/", "/usr/sbin/" ] }

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

    exec { 'install memcached': command => '/usr/bin/pecl install memcached' }
    exec { 'install gearman': command => '/usr/bin/pecl install gearman' }
    exec { 'install redis': command => '/usr/bin/pecl install redis' }

}

include phpdevweb

package { 'memcached': ensure => present }
service {
        'memcached':
            name       => memcached,
            enable     => true,
    }

package { 'gearmand': ensure => present }
service {
        'gearmand':
            name       => gearmand,
            enable     => true,
    }

package { 'redis': ensure => present }
service {
        'redis-server':
            name       => redis-server,
            enable     => true,
    }

