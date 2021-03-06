# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "capistrano/chef/version"

Gem::Specification.new do |s|
  s.name        = "capistrano-chef"
  s.version     = CapistranoChef::VERSION.dup
  s.platform    = Gem::Platform::RUBY
  s.license     = 'MIT'
  s.authors     = ['Nathan L Smith']
  s.email       = ['nlloyds@gmail.com']
  s.homepage    = "https://github.com/cramerdev/capistrano-chef"
  s.summary     = %q{Capistrano extensions for Chef integration}
  s.description = %q{Allows capistrano to use Chef data for deployment}

  s.rubyforge_project = "capistrano-chef"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.add_dependency 'capistrano', '>= 2'
  s.add_dependency 'tylerrick-chef' #, '~> 0.10.8'

end
