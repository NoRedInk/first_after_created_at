$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "first_after_created_at/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "first_after_created_at"
  s.version     = FirstAfterCreatedAt::VERSION
  s.authors     = ["quelledanielle"]
  s.email       = ["quelledanielle@users.noreply.github.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of FirstAfterCreatedAt."
  s.description = "TODO: Description of FirstAfterCreatedAt."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "activerecord", "~> 4.2.9"

  s.add_development_dependency "pry"
  s.add_development_dependency "rb-readline"
  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rails", "~> 4.2.9"
end
