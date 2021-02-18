lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'first_after_created_at/version'


Gem::Specification.new do |s|
  s.name = "first_after_created_at"
  s.version = FirstAfterCreatedAt::VERSION

  s.required_rubygems_version = '>=2.6'
  s.require_paths = ["lib"]
  s.authors = ["Michael Glass", "quelledanielle"]
  s.date = "2019-02-15"
  s.description = "adds a first_by_created_at class method to active record models that search by binary search through auto-ascending primary key ids"
  s.email = "mike@noredink.com"
  s.files = Dir['CHANGELOG.md', 'MIT-LICENSE', 'README.md', 'lib/**/*']
  s.homepage = "http://github.com/NoRedInk/first_after_created_at"
  s.licenses = ["MIT"]
  s.rubygems_version = "3.0.2"
  s.summary = "adds a first_by_created_at class method to active record models that search by binary search through auto-ascending primary key ids"


  s.add_runtime_dependency("activerecord", ">= 5.2.2", "< 7.0.0")
  s.add_development_dependency("sqlite3", "~> 1.4.0")
  s.add_development_dependency("appraisal")
  s.add_development_dependency("rails", "~> 6.1.3")
end
