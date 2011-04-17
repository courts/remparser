# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{remparser}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Patrick Hof"]
  s.date = %q{2011-04-11}
  s.email = %q{courts@offensivethinking.org}
  s.files = ["bin/rem2yaml.rb", "lib/remparser.treetop"]
  s.executables = ["rem2yaml.rb"]
  s.homepage = %q{http://www.offensivethinking.org}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{A parser for 'remind -s' output}
  s.add_dependency('treetop', '>= 1.4.9')

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
