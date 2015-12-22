name 'chef-workstation'
default_source :community
run_list ['etc_environment::default',
          'chef-workstation::default',
          'chef-client::config',
          'chef-client::cron',
          'chef-client::delete_validation']

cookbook 'etc_environment'
cookbook 'chef-client'
cookbook 'chef-workstation'

override['etc_environment'] = {
  'SSL_CERT_FILE' => '',
  'VAGRANTFILE_RB' => '/usr/local/etc/Vagrantfile.rb',
  'KITCHEN_GLOBAL_YAML' => '/usr/local/etc/kitchen.yml',
  'http_proxy' => ENV['HTTP_PROXY'],
  'https_proxy' => ENV['HTTPS_PROXY'],
  'no_proxy' => ENV['NO_PROXY']
}
override['chef_client']['splay'] = 300
override['chef_client']['cron']['minute'] = '*/15'
override['chef_client']['cron']['hour'] = '*'
override['chef_client']['config']['client_fork'] = false
override['chef_client']['config']['enable_reporting'] = true
override['chef_dk']['version'] = '0.11'
override['vagrant']['plugins'] = %w{vagrant-ca-certificates vagrant-berkshelf vagrant-cachier vagrant-omnibus vagrant-proxyconf}
