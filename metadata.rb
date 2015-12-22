name 'chef-workstation'
maintainer 'John Bellone'
maintainer_email 'jbellone@bloomberg.net'
license 'Apache 2.0'
description 'Application cookbook which configures a node for Chef development.'
long_description 'Application cookbook which configures a node for Chef development.'
version '1.0.0'
issues_url 'https://github.com/bloomberg/chef-workstation-cookbook/issues'
source_url 'https://github.com/bloomberg/chef-workstation-cookbook'

supports 'ubuntu', '~> 14.04'
supports 'redhat', '~> 7.1'
supports 'centos', '~> 7.1'
supports 'fedora', '~> 22'

depends 'chef-dk'
depends 'emacs'
depends 'git'
depends 'gemrc'
depends 'vim'
depends 'vagrant'