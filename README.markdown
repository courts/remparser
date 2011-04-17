remparser
=========

Author:      Patrick Hof <courts@offensivethinking.org>  
License:     [CC0 1.0 Universal License](http://creativecommons.org/publicdomain/zero/1.0/legalcode)

Download:    git clone git@github.com:courts/remparser.git  
YARD docs:   [http://courts.github.com/remparser](http://courts.github.com/remparser)

remparser is a simple PEG parser written in Treetop to parse the output of
['remind -s'](http://www.roaringpenguin.com/products/remind) into a data
structure. The simple command line program rem2yaml.rb is provided to show its
usage. rem2yaml parses remind's output given on STDIN in a YAML data structure.

rem2yaml.rb Command Line Usage
---------------------------

    Usage: rem2yaml.rb [options] < $STDIN

    Options:
    --------
    -h      Show this help

    Where $STDIN is the output of 'remind -s'


Examples
--------

    remind -s12 ~/.reminders 01 Jan 2011 | rem2yaml.rb

RubyGems
--------

A gemspec file is included, so you can build and install remparser as a gem with:

    gem build remparser.gemspec
    gem install remparser-x.x.x.gem
