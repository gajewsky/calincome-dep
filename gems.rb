# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.1'

gem 'rails', '~> 5.2.2'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.11'
gem 'webpacker'
gem 'slim'
gem 'slim-rails'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'jbuilder', '~> 2.5'
gem 'clearance'

group :development, :test do
  gem 'listen'
  gem 'pry'
  gem 'rubocop'
  gem 'slim_lint'
end
