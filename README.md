##VAGRANT + PUPPET = ![https://www.centos.org/themes/centos/images/centos_logo_45.png](https://www.centos.org/themes/centos/images/centos_logo_45.png) 6.4
---
####Apache 2.2+

####PHP 5.3 / 5.4 / 5.5
- setup modules

####Add
- MongoDB
- gearman
- pcntl
- pcre

####Import MySQL

####Add Guis
- Gearman
- mongo

#Issues:
	Warning: Config file /etc/puppet/hiera.yaml not found, using Hiera defaults

---

		Error: Execution of '/usr/bin/yum -d 0 -e 0 -y install uuid-php' returned 1:

	Transaction Check Error:
	  file /etc/php.ini from install of php-common-5.3.3-23.el6_4.x86_64 conflicts with file from package php54-common-5.4.20-1.ius.centos6.x86_64
	  file /usr/lib64/php/modules/curl.so from install of php-common-5.3.3-23.el6_4.x86_64 conflicts with file from package php54-common-5.4.20-1.ius.centos6.x86_64
	  file /usr/lib64/php/modules/fileinfo.so from install of php-common-5.3.3-23.el6_4.x86_64 conflicts with file from package php54-common-5.4.20-1.ius.centos6.x86_64
	  file /usr/lib64/php/modules/json.so from install of php-common-5.3.3-23.el6_4.x86_64 conflicts with file from package php54-common-5.4.20-1.ius.centos6.x86_64
	  file /usr/lib64/php/modules/phar.so from install of php-common-5.3.3-23.el6_4.x86_64 conflicts with file from package php54-common-5.4.20-1.ius.centos6.x86_64
	  file /usr/lib64/php/modules/zip.so from install of php-common-5.3.3-23.el6_4.x86_64 conflicts with file from package php54-common-5.4.20-1.ius.centos6.x86_64

	Error Summary
	-------------

	Error: /Stage[main]/Server::Php/Package[uuid-php]/ensure: change from absent to present failed: Execution of '/usr/bin/yum -d 0 -e 0 -y install uuid-php' returned 1:

	Transaction Check Error:
	  file /etc/php.ini from install of php-common-5.3.3-23.el6_4.x86_64 conflicts with file from package php54-common-5.4.20-1.ius.centos6.x86_64
	  file /usr/lib64/php/modules/curl.so from install of php-common-5.3.3-23.el6_4.x86_64 conflicts with file from package php54-common-5.4.20-1.ius.centos6.x86_64
	  file /usr/lib64/php/modules/fileinfo.so from install of php-common-5.3.3-23.el6_4.x86_64 conflicts with file from package php54-common-5.4.20-1.ius.centos6.x86_64
	  file /usr/lib64/php/modules/json.so from install of php-common-5.3.3-23.el6_4.x86_64 conflicts with file from package php54-common-5.4.20-1.ius.centos6.x86_64
	  file /usr/lib64/php/modules/phar.so from install of php-common-5.3.3-23.el6_4.x86_64 conflicts with file from package php54-common-5.4.20-1.ius.centos6.x86_64
	  file /usr/lib64/php/modules/zip.so from install of php-common-5.3.3-23.el6_4.x86_64 conflicts with file from package php54-common-5.4.20-1.ius.centos6.x86_64

	Error Summary
	-------------


	The following SSH command responded with a non-zero exit status.

---

	Vagrant assumes that this means the command failed!
---

	cd /tmp/vagrant-puppet/manifests && FACTER_host_source_root='/Users/chris/Sites/WEB_DIRS/htdocs_vagrant/vagrant-lamp-centos64/projects' FACTER_guest_source_root='/source' FACTER_host_log_root='/Users/chris/Sites/WEB_DIRS/htdocs_vagrant/vagrant-lamp-centos64/logs' FACTER_guest_log_root='/mnt/logs' FACTER_web_root='web' FACTER_php_version='5.4' FACTER_ip_addresses='192.168.56.60' FACTER_enable_yum_update='true' FACTER_enable_nfs='false' puppet apply --modulepath '/etc/puppet/modules:/tmp/vagrant-puppet/modules-0' all.pp --detailed-exitcodes || [ $? -eq 2 ]

