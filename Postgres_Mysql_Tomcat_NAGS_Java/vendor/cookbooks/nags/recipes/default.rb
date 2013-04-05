#
# Cookbook Name:: nags
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

tarball = "nags-6.1.zip"

execute "wget" do
 tarball_url = "http://164.99.129.130/NFS/chendil/nags-6.1.zip"
 cwd "/tmp"
 command "wget #{tarball_url}"
 creates "/tmp/#{tarball}"
 action :run
end

execute "unzip" do
 
 installation_dir = "/home/vagrant"
 cwd installation_dir
 command "unzip /tmp/#{tarball}"
 creates installation_dir + "/nags61"
 action :run
end
