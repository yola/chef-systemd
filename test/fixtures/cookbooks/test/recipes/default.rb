include_recipe 'test::units'
include_recipe 'test::drop_ins'
include_recipe 'test::daemons'
include_recipe 'test::misc'
include_recipe 'systemd::hostname'
include_recipe 'systemd::journald'
include_recipe 'systemd::locale'
include_recipe 'systemd::networkd'
include_recipe 'systemd::rtc'
include_recipe 'systemd::timesyncd' unless platform_family?('rhel')
include_recipe 'systemd::timezone'
include_recipe 'systemd::vconsole' unless platform_family?('debian')
