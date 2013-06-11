source 'https://rubygems.org'

ruby '2.0.0'

gem 'foreman', '0.63.0'
gem 'puma', '2.0.1'
gem 'sinatra', '1.4.3'
gem 'json', '1.7.7'

heroku_java_home = '/usr/lib/jvm/java-6-openjdk'
ENV['JAVA_HOME'] = heroku_java_home if Dir.exist?(heroku_java_home)
gem 'open-nlp', '0.1.2' # version 0.1.4 removes the OpenNLP JARs from the gem
