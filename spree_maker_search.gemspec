# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_maker_search'
  s.version     = '0.1.0'
  s.summary     = 'Spree Extension : Show maker name on detail page , enable filter by maker name list on taxon page , and enable manage makers.'
  s.description = 'Product's maker name is shown on product detail page. Customer can filter by maker name on taxon page. Admin can manage maker list and set one maker to product.'
  s.required_ruby_version = '>= 1.9.3'

  s.author    = 'Mika Mizuno'
  s.email     = 'mika.mizuno@exsight.co.jp'
  s.homepage  = 'http://www.exsight.co.jp'

  #s.files       = `git ls-files`.split("\n")
  #s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '~> 2.1.4'
  s.add_dependency 'spree_add_on_menu', '~> 0.1'

  s.add_development_dependency 'capybara', '~> 2.1'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_girl', '~> 4.2'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails',  '~> 2.13'
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'selenium-webdriver'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'sqlite3'
end
