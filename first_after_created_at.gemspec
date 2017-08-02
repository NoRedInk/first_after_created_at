$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "first_after_created_at/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "first_after_created_at"
  s.version     = FirstAfterCreatedAt::VERSION
  s.authors     = ["Michael Glass", "quelledanielle"]
  s.email       = ["me@mike.is"]
  s.homepage    = "https://github.com/NoRedInk/first_after_created_at"
  s.summary     = "adds a first_by_created_at class method to active record models that search by binary search through auto-ascending primary key ids"
  s.description = s.summary
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "activerecord", "~> 4.2.9"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rails", "~> 4.2.9"
end
