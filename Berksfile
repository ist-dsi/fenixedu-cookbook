source 'https://supermarket.chef.io'

metadata
cookbook 'java', '~> 3.2.1'
cookbook 'tomcat', '~> 3.2.0'
cookbook 'maven', '~> 5.2.0'

group :integration do
  cookbook 'mariadb'
  cookbook 'selinux'
  cookbook 'mysql_test', path: 'test/cookbooks/mysql_test'
end
