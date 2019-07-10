source "https://rubygems.org"
git_source(:github){|repo| "https://github.com/#{repo}.git"}

ruby "2.5.3"

gem "bcrypt"
gem "coffee-rails", "~> 4.2"
gem "config"
gem "faker", git: "https://github.com/stympy/faker.git", branch: "master"
gem "jbuilder", "~> 2.5"
gem "puma", "~> 3.11"
gem "rails", "~> 5.2.3"
gem "sass-rails", "~> 5.0"
gem "sqlite3"
gem "uglifier", ">= 1.3.0"

# Use ActiveStorage variant
# gem "mini_magick", "~> 4.8"

# Use Capistrano for deployment
# gem "capistrano-rails", group: :development

gem "bootsnap", ">= 1.1.0", require: false
gem "bootstrap", "~> 4.3.1"
gem "bootstrap4-kaminari-views"
gem "jquery-rails"
gem "kaminari"

group :development, :test do
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "dotenv-rails"
  gem "rubocop", "~> 0.54.0", require: false
end

group :development do
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "web-console", ">= 3.3.0"
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem "capybara", ">= 2.15"
  gem "selenium-webdriver"
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem "chromedriver-helper"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
