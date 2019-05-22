default['fenixedu-cookbook']['webapp'] = {
  'xms' => '256m',
  'xmx' => '1024m',
  'name' => 'fenix',
}
default['fenixedu-cookbook']['webapp']['java_opts'] = "-Xms#{node['fenixedu-cookbook']['webapp']['xms']} \
-Xmx#{node['fenixedu-cookbook']['webapp']['xmx']}"
