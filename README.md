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

		Error: Could not update: Execution of '/usr/bin/yum -d 0 -e 0 -y install gearman' returned 1: Error: Nothing to do

---

		Error: /Stage[main]/Gearman/Package[gearman]/ensure: change from absent to latest failed: Could not update: Execution of '/usr/bin/yum -d 0 -e 0 -y install gearman' returned 1: Error: Nothing to do

<!-- None! All working!! -->

#Known Errors:
These errors are benign
	Warning: Config file /etc/puppet/hiera.yaml not found, using Hiera defaults

