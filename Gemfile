# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

gem "rails"
# Use postgresql as the database for Active Record
gem 'pg', '~> 1.1'

group :development, :test do
    gem 'capybara'
    gem 'rspec-rails'
    gem 'rubocop', '0.79.0'
    gem 'rubocop-rails', require: false
    gem 'simplecov', require: false
    gem 'simplecov-console', require: false
  end