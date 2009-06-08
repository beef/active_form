Gem::Specification.new do |s|
  s.name    = 'active_form'
  s.version = '1.0.3'
  s.date    = '2009-06-08'
  
  s.summary = "Validations for Non Active Record Models"
  
  s.authors  = ['Steve England']
  s.email    = 'stephen.england@gmail.com'
  s.homepage = 'http://github.com/beef/active_form'
  
  s.has_rdoc = false
  s.add_dependency 'activerecord', ['>= 2.1.0']
  
  s.files = %w(init.rb lib lib/active_form.rb MIT-LICENCE Rakefile test)
  s.test_files = %w(test/test_helper.rb test/basic_test.rb)
end
