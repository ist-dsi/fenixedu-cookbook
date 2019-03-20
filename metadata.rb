name 'fenixedu-cookbook'
version '0.0.1'
license 'GPL-3.0'

maintainer 'Sérgio Silva'
maintainer_email 'sergio.silva@tecnico.ulisboa.pt'
maintainer 'Simão Silva'
maintainer_email 'simao.silva@tecnico.ulisboa.pt'

chef_version '>= 14.10'

%w(redhat centos).each do |el|
  supports el, '>= 7.0'
end
supports 'debian', '>= 9.0'
supports 'ubuntu', '>= 18.04'

%w( apt yum yum-epel poise-service hostsfile selinux).each do |dep|
  depends dep
end

source_url 'https://github.com/ist-dsi/fenixedu-cookbook' if respond_to?(:source_url)
issues_url 'https://github.com/ist-dsi/fenixedu-cookbook/issues' if respond_to?(:issues_url)
