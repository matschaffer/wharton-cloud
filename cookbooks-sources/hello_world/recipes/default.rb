#
# Cookbook Name:: hello_world
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

docroot = "/srv/www/hello_world"

directory docroot do
  recursive true
end

cookbook_file "#{docroot}/index.html" do
  mode 0644
end

web_app "hello_world" do
  server_name node.cloud.public_hostname
  docroot docroot
end
