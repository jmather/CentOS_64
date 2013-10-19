#   Copyright 2013 Brainsware
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.

# = Class: composer::install::package
#
#  This class helps install composer from a package
#
# == Parameters:
#
#  The parameters in this class are exactly the same as the ones of composer
#
class composer::install::package (
  $target_dir   = $composer::params::target_dir,
  $command_name = $composer::params::command_name,
  $package      = $composer::params::package,
  $user         = $composer::params::user,
  $auto_update  = $composer::params::auto_update
) inherits composer::params {

  $ensure = $auto_update? {
    true    => 'latest',
    default => 'present',
  }

  package { 'composer-install':
    ensure => $ensure,
    name   => $package,
  }
}