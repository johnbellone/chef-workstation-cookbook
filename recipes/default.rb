#
# Cookbook: chef-workstation
# License: Apache 2.0
#
# Copyright 2015, Bloomberg Finance L.P.
#
node.default['gemrc']['path'] = Gem::ConfigFile::SYSTEM_WIDE_CONFIG_FILE
node.default['gemrc']['reload'] = true
include_recipe 'gemrc::default'

node.default['chef_dk']['global_shell_init'] = true
include_recipe 'chef-dk::default'

include_recipe 'emacs::default', 'git::default', 'vagrant::default', 'vim::default'
