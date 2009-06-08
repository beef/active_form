# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{active_form}
  s.version = "1.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Steve England"]
  s.date = %q{2009-06-08}
  s.email = %q{steve@wearebeef.co.uk}
  s.extra_rdoc_files = [
    "README.txt"
  ]
  s.files = [
    ".gitignore",
     "MIT-LICENCE",
     "README.txt",
     "Rakefile",
     "VERSION",
     "active_form.gemspec",
     "init.rb",
     "lib/active_form.rb",
     "test/basic_test.rb",
     "test/test_helper.rb"
  ]
  s.homepage = %q{http://github.com/beef/active_form}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.3}
  s.summary = %q{Validations for Non Active Record Models}
  s.test_files = [
    "test/basic_test.rb",
     "test/test_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
