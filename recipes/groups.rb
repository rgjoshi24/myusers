#
# Cookbook:: myusers
# Recipe:: groups
#
# Copyright:: 2018, The Authors, All Rights Reserved.
search("groups", "platform:#{node['platform']}").each do |group_data|
  group group_data['id'] do
    members group_data['members']
    action :create
  end
end 
