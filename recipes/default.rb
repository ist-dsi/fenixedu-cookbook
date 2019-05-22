#
# Cookbook:: fenixedu-cookbook
# Recipe:: default
#
###########################################################
######################## JAVA #############################
###########################################################
node.normal['java'] = {
  'jdk_version' => '8',
  'install_flavor' => 'openjdk',
  'set_etc_environment' => true,
}
include_recipe 'java'

###########################################################
###################### TOMCAT #############################
###########################################################
include_recipe 'tomcat'

tomcat_install node['fenixedu-cookbook']['webapp']['name'] do
  version '7.0.93'
end

# FENIX DEPLOYMENT
remote_file "#{node['java']['java_home']}/jre/lib/ext/utf8-resources-1.0.0.jar" do
  source 'https://repo.fenixedu.org/fenixedu-maven-repository/org/fenixedu/utf8-resources/1.0.0/utf8-resources-1.0.0.jar'
  owner 'root'
  group 'root'
  mode '0644'
  action :create
end

remote_file "#{Chef::Config['file_cache_path']}/#{node['fenixedu-cookbook']['webapp']['name']}.war" do
  source 'https://github.com/FenixEdu/webapp/releases/download/1.0.0/webapp-1.0.0-SNAPSHOT.war'
  owner "tomcat_#{node['fenixedu-cookbook']['webapp']['name']}"
  group "tomcat_#{node['fenixedu-cookbook']['webapp']['name']}"
  action :create
end

archive_file node['fenixedu-cookbook']['webapp']['name'] do
  destination "/opt/tomcat_#{node['fenixedu-cookbook']['webapp']['name']}/webapps/#{node['fenixedu-cookbook']['webapp']['name']}"
  owner "tomcat_#{node['fenixedu-cookbook']['webapp']['name']}"
  group "tomcat_#{node['fenixedu-cookbook']['webapp']['name']}"
  path "#{Chef::Config['file_cache_path']}/#{node['fenixedu-cookbook']['webapp']['name']}.war"
end

template "/opt/tomcat_#{node['fenixedu-cookbook']['webapp']['name']}/webapps/#{node['fenixedu-cookbook']['webapp']['name']}/WEB-INF/classes/configuration.properties" do
  source 'configuration.properties.erb'
  owner "tomcat_#{node['fenixedu-cookbook']['webapp']['name']}"
  group "tomcat_#{node['fenixedu-cookbook']['webapp']['name']}"
  mode '0755'
  action :create
end

template "/opt/tomcat_#{node['fenixedu-cookbook']['webapp']['name']}/webapps/#{node['fenixedu-cookbook']['webapp']['name']}/WEB-INF/classes/fenix-framework.properties" do
  source 'fenix-framework.properties.erb'
  owner "tomcat_#{node['fenixedu-cookbook']['webapp']['name']}"
  group "tomcat_#{node['fenixedu-cookbook']['webapp']['name']}"
  mode '0755'
  action :create
end

# FIX permissions, for some reason archive_file is setting the wrong permissions, even using mode.
directory "/opt/tomcat_#{node['fenixedu-cookbook']['webapp']['name']}/webapps/#{node['fenixedu-cookbook']['webapp']['name']}" do
  mode '0755'
end
# Overwrite configuration files

# START SERVICE
tomcat_service node['fenixedu-cookbook']['webapp']['name'] do
  action :start
  env_vars [{ 'CATALINA_OPTS' => "-Dorg.apache.jasper.compiler.Parser.STRICT_QUOTE_ESCAPING=false -Djava.awt.headless=true #{node['fenixedu-cookbook']['webapp']['java_opts']}" } ]
end
