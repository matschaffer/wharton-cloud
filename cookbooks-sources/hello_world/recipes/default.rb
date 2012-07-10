#
# Cookbook Name:: hello_world
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

directory "/srv/www/hello" do
  recursive true
end

cookbook_file "/srv/www/hello/index.html"

web_app "hello_world" do
  server_name node.cloud.public_dns_address
  docroot "/srv/www/hello_world"
end
