name 'mysql_test'
version '0.0.3'
license 'Apache-2.0'

maintainer 'Simão Silva'
maintainer_email 'simao.silva@tecnico.ulisboa.pt'

chef_version '>= 14.10'

%w(redhat centos).each do |el|
  supports el, '>= 7.0'
end
supports 'debian', '>= 9.0'
supports 'ubuntu', '>= 18.04'

depends 'mariadb'

source_url 'https://github.com/ist-dsi/fenixedu-cookbook' if respond_to?(:source_url)
issues_url 'https://github.com/ist-dsi/fenixedu-cookbook/issues' if respond_to?(:issues_url)
