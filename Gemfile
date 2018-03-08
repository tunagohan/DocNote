source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.5'
gem 'mysql2', '>= 0.3.18', '< 0.5'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'therubyracer', platforms: :ruby
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'

# Self ADD Gems ---------------------- #
gem 'devise', '4.4.1'
gem 'omniauth-twitter', '1.4.0'
gem 'kaminari', '>= 0.15', '< 2.0'
gem 'activeadmin', '1.2.1'
gem 'cancan', '1.6.10'
gem 'draper', '3.0.1'
gem 'pundit', '1.1.0'
gem 'redcarpet', '3.4.0'
gem 'coderay', '1.1.2'
# ------------------------------------- #

group :development, :test do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
# Self ADD Gems ----------------------- #
  gem 'letter_opener', '1.6.0'
  gem 'pry-rails', '0.3.6'
  gem 'pry-doc', '0.13.3'
  gem 'pry-byebug', '3.6.0'
  gem 'pry-stack_explorer', '0.4.9.2'
  gem 'rspec-rails', '~> 3.7'
  gem 'factory_girl_rails', '4.9.0'
  gem 'faker', '1.8.7'
# ------------------------------------- #
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]