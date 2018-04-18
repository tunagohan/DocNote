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
# ユーザー認証
gem 'devise', '4.4.1'
# twiiter認証
gem 'omniauth-twitter', '1.4.0'
# ページネーション
gem 'kaminari', '>= 0.15', '< 2.0'
# 管理画面
gem 'activeadmin', '1.2.1'
gem 'cancan', '1.6.10'
gem 'draper', '3.0.1'
gem 'pundit', '1.1.0'
# マークダウン
gem 'redcarpet', '3.4.0'
gem 'marked-rails', '0.3.2.0'
# シンタックスハイライト
gem 'coderay', '1.1.2'
# bootstrao
gem 'bootstrap-sass', '~> 3.3.6'
gem 'bootstrap_form', '2.7.0'
# i18n
gem 'rails-i18n', '~> 5.1'
# tag
gem 'acts-as-taggable-on', github: 'mbleigh/acts-as-taggable-on', branch: 'master'
# javascript
gem 'jquery-rails', '4.3.1'
gem 'vuejs-rails', '2.5.13'
# awesome
gem 'font-awesome-rails', '4.7.0.3'
# ENV
gem 'dotenv-rails'
# ------------------------------------- #

group :development, :test do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
# Self ADD Gems ----------------------- #
  gem 'letter_opener_web', '1.3.3'
  gem 'pry-rails', '0.3.6'
  gem 'pry-doc', '0.13.3'
  gem 'pry-byebug', '3.6.0'
  gem 'pry-stack_explorer', '0.4.9.2'
  gem 'rspec-rails', '~> 3.7'
  gem 'factory_bot_rails', '4.8.2'
  gem 'faker', '1.8.7'
# ------------------------------------- #
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]