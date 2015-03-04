execute "yum update -y"

package "httpd" do
  action :install
end

service "httpd" do
  action [:enable, :start]
end

package "git" do
  action :install
end

template "/etc/yum.repos.d/epel.repo" do
  source "../templates/epel.repo"
end

template "/etc/yum.repos.d/remi.repo" do
  source "../templates/remi.repo"
end

%w{
  php
}.each do |pkg|
  package pkg do
    options "--enablerepo=remi --enablerepo=remi-php55"
    action :install
  end
end
