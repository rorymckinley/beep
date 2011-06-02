# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "beep/version"

Gem::Specification.new do |s|
  s.name        = "beep"
  s.version     = Beep::VERSION
  s.authors     = ["Rory McKinley"]
  s.email       = ["rorymckinley@gmail.com"]
  s.homepage    = "https://github.com/rorymckinley/beep"
  s.summary     = %q{A small gem to manipulate the linux beep utility}
  s.description = %q{This gem provides a very simple wrapper around the Linux beep utility}

  s.rubyforge_project = "beep"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
