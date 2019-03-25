#
# Cookbook:: fenixedu-cookbook
# Recipe:: default
#
###########################################################
######################## JAVA #############################
###########################################################
node.normal['java'] = {
  'jdk_version' => '8',
  'install_flavor' => 'oracle',
  'set_etc_environment' => true,
  'oracle' => {
    'accept_oracle_download_terms' => true,
    'jce' => {
      'enabled' => true,
    },
  },
}
include_recipe 'java'

###########################################################
###################### TOMCAT #############################
###########################################################
include_recipe 'tomcat'

tomcat_install 'fenixedu-webapp' do
  version '7.0.93'
end

###########################################################
###################### MAVEN ##############################
###########################################################

node.normal['maven']['mavenrc']['opts'] = "#{node['fenixedu-cookbook']['webapp']['java_opts']} -Dorg.apache.jasper.compiler.Parser.STRICT_QUOTE_ESCAPING=false"
node.normal['maven']['setup_bin'] = true
include_recipe 'maven'
