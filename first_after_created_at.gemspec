# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: first_after_created_at 0.0.3 ruby lib

Gem::Specification.new do |s|
  s.name = "first_after_created_at".freeze
  s.version = "0.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Michael Glass".freeze, "quelledanielle".freeze]
  s.date = "2017-08-03"
  s.description = "adds a first_by_created_at class method to active record models that search by binary search through auto-ascending primary key ids".freeze
  s.email = "me@mike.is".freeze
  s.extra_rdoc_files = [
    "README.md"
  ]
  s.files = [
    ".travis.yml",
    "CHANGELOG.md",
    "Gemfile",
    "Gemfile.lock",
    "MIT-LICENSE",
    "README.md",
    "Rakefile",
    "VERSION",
    "first_after_created_at-0.0.1.gem",
    "first_after_created_at.gemspec",
    "lib/first_after_created_at.rb",
    "lib/first_after_created_at/version.rb",
    "lib/tasks/first_after_created_at_tasks.rake",
    "test/dummy/README.rdoc",
    "test/dummy/Rakefile",
    "test/dummy/app/assets/images/.keep",
    "test/dummy/app/assets/javascripts/application.js",
    "test/dummy/app/assets/stylesheets/application.css",
    "test/dummy/app/controllers/application_controller.rb",
    "test/dummy/app/controllers/concerns/.keep",
    "test/dummy/app/helpers/application_helper.rb",
    "test/dummy/app/mailers/.keep",
    "test/dummy/app/models/.keep",
    "test/dummy/app/models/concerns/.keep",
    "test/dummy/app/models/has_timestamp.rb",
    "test/dummy/app/views/layouts/application.html.erb",
    "test/dummy/bin/bundle",
    "test/dummy/bin/rails",
    "test/dummy/bin/rake",
    "test/dummy/bin/setup",
    "test/dummy/config.ru",
    "test/dummy/config/application.rb",
    "test/dummy/config/boot.rb",
    "test/dummy/config/database.yml",
    "test/dummy/config/environment.rb",
    "test/dummy/config/environments/development.rb",
    "test/dummy/config/environments/production.rb",
    "test/dummy/config/environments/test.rb",
    "test/dummy/config/initializers/assets.rb",
    "test/dummy/config/initializers/backtrace_silencers.rb",
    "test/dummy/config/initializers/cookies_serializer.rb",
    "test/dummy/config/initializers/filter_parameter_logging.rb",
    "test/dummy/config/initializers/inflections.rb",
    "test/dummy/config/initializers/mime_types.rb",
    "test/dummy/config/initializers/session_store.rb",
    "test/dummy/config/initializers/to_time_preserves_timezone.rb",
    "test/dummy/config/initializers/wrap_parameters.rb",
    "test/dummy/config/locales/en.yml",
    "test/dummy/config/routes.rb",
    "test/dummy/config/secrets.yml",
    "test/dummy/db/migrate/20170802143942_create_has_timestamps.rb",
    "test/dummy/db/schema.rb",
    "test/dummy/lib/assets/.keep",
    "test/dummy/log/.keep",
    "test/dummy/public/404.html",
    "test/dummy/public/422.html",
    "test/dummy/public/500.html",
    "test/dummy/public/favicon.ico",
    "test/dummy/test/fixtures/has_timestamps.yml",
    "test/dummy/test/models/has_timestamp_test.rb",
    "test/first_after_created_at_test.rb",
    "test/test_helper.rb"
  ]
  s.homepage = "http://github.com/NoRedInk/first_after_created_at".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.11".freeze
  s.summary = "adds a first_by_created_at class method to active record models that search by binary search through auto-ascending primary key ids".freeze

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activerecord>.freeze, ["~> 4.2.9"])
      s.add_development_dependency(%q<sqlite3>.freeze, [">= 0"])
      s.add_development_dependency(%q<jeweler>.freeze, [">= 0"])
      s.add_development_dependency(%q<rails>.freeze, ["~> 4.2.9"])
    else
      s.add_dependency(%q<activerecord>.freeze, ["~> 4.2.9"])
      s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
      s.add_dependency(%q<jeweler>.freeze, [">= 0"])
      s.add_dependency(%q<rails>.freeze, ["~> 4.2.9"])
    end
  else
    s.add_dependency(%q<activerecord>.freeze, ["~> 4.2.9"])
    s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
    s.add_dependency(%q<jeweler>.freeze, [">= 0"])
    s.add_dependency(%q<rails>.freeze, ["~> 4.2.9"])
  end
end

