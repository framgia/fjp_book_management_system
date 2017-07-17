source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem "rails", "~> 5.1.2"
gem "sqlite3"
gem "puma", "~> 3.7"
gem "sass-rails", "~> 5.0"
gem "uglifier", ">= 1.3.0"
gem "coffee-rails", "~> 4.2"
gem "turbolinks", "~> 5"
gem "jbuilder", "~> 2.5"
gem "config"
gem "devise"

group :development, :test do
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "capybara", "~> 2.13"
  gem "selenium-webdriver"
  gem "rspec-rails"
  gem "database_cleaner"
  gem "factory_girl_rails"
  gem "faker"
  gem "rails-controller-testing"
end

group :development do
  gem "web-console", ">= 3.3.0"
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end

gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]

group :test do
  gem "rspec-collection_matchers"
  gem "shoulda-matchers"
  gem "database_cleaner"
  gem "rubocop", require: false
  gem "rubocop-checkstyle_formatter", require: false
  gem "scss_lint", require: false
  gem "scss_lint_reporter_checkstyle", require: false
  gem "rails_best_practices"
  gem "brakeman", require: false
  gem "bundler-audit"
  gem "reek"
  gem "simplecov", require: false
  gem "rspec-activemodel-mocks"
  gem "cucumber-rails", require: false
end
