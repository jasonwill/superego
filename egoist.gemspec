# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "egoist/version"

Gem::Specification.new do |s|
  s.name        = "egoist"
  s.version     = Egoist::VERSION
  s.authors     = ["Jason Williams"]
  s.email       = ["jwilliams@pnca.edu"]
  s.homepage    = ""
  s.summary     = "An authentication client that provides a persistent, shared session with the Superego centralized authentication system."
  s.description = "An authentication client that provides a persistent, shared session with the Superego centralized authentication system."
  
  s.rubyforge_project = "egoist"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"

  s.add_dependency "rails", "~> 3.1.1"
  s.add_dependency "mysql"
  s.add_dependency "omniauth"

  s.add_development_dependency "rspec", "~> 2.6"

end