#
# Cookbook Name:: mytestfinal
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#
Chef::Log.info "I am test cookbook"
=begin
package 'git'
=end

file '/tmp/myfile.txt' do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

