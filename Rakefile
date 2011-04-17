require 'yard'
require 'rake/clean'

CLEAN.include('doc/', '*.gem')

YARD::Rake::YardocTask.new do |t|
  t.files   = ['bin/rem2yaml.rb', 'lib/remparser.treetop']
  t.options = ['--main', 'README', '--markup', 'markdown']
end
