source 'http://rubygems.org'

gem 'rails', '4.0.2'
gem 'sprockets', '2.11.0'
gem 'mysql2'
gem 'jbuilder', '~> 1.2'
gem 'simple_form'
gem 'apotomo', git: 'git@github.com:apotonick/apotomo.git'
gem 'haml-rails'
gem 'fog'
gem 'unf'
gem 'newrelic_rpm'
gem 'honeybadger'
gem 'choices'
gem 'capistrano'
gem 'rvm-capistrano'
gem 'devise'
gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'jquery-rails'
gem 'paperclip', '~> 3.0'
gem 'oj'
gem 'friendly_id', '~> 5.0.0'
gem 'select2-rails'
gem 'elasticsearch'
gem 'tire'
gem 'brcpfcnpj'
gem 'redis-rails'
gem 'paper_trail', '~> 3.0.0'
gem 'best_in_place', git: 'git@github.com:bernat/best_in_place.git', branch: 'rails-4'
gem 'useragent'
gem 'cancan'
gem 'cancan_strong_parameters'
gem 'ruby-progressbar'
gem 'thread_safe', '0.2.0'

#beta
gem 'client_side_validations', git: 'git@github.com:bcardarella/client_side_validations.git', branch: "4-0-beta"
gem 'client_side_validations-simple_form', git: 'git@github.com:saveritemedical/client_side_validations-simple_form.git'

# xlsol
gem 'ping',               git: 'git@github.com:xl-solutions/ping',                  branch: 'master'
gem 'ecommerce-services', git: 'git@github.com:xl-solutions/ecommerce-services',    branch: 'master', require: 'ecommerce_services'
gem 'bridge_api',         git: 'git@github.com:xl-solutions/e-commerce-bridge',     branch: 'master'
gem 'xl_admin',           git: 'git@github.com:xl-solutions/xl-admin',              branch: 'feature/posvendas'
gem 'ecommerce_core',     git: 'git@github.com:xl-solutions/ecommerce-core',        branch: 'feature/posvendas'

# sidekiq
gem 'sidekiq'
gem 'sidekiq-unique-jobs'
gem 'sidekiq-limit_fetch'
gem 'sidekiq-benchmark'
gem 'sidekiq-cron', :git => "git@github.com:xl-solutions/sidekiq-cron.git"
gem 'sinatra', :require => false
gem 'slim'
# sidekiq

# to compile assets at production runtime
gem 'execjs'
gem 'therubyracer'

group :development, :test do
  gem 'pry-debugger'
  gem 'rspec-rails'
  gem 'rspec-apotomo'
  gem 'factory_girl_rails'
  gem 'simplecov', require: false
  gem 'thin'
  gem 'quiet_assets'
  gem 'capybara'
  gem 'letter_opener'
end

group :development do
  gem 'meta_request'
end

group :test do
  gem "codeclimate-test-reporter", require: false
  gem 'shoulda-matchers'
  gem 'ZenTest'
  gem 'webmock', '1.13'
  gem 'vcr'
end

group :doc do
  gem 'sdoc', require: false
end
