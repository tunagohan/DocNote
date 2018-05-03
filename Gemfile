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

# Self ADD Gems --------------------------------------- #
gem 'devise', '4.4.1'               # User Devise
gem 'omniauth-twitter', '1.4.0'     # Auth
gem 'kaminari', '>= 0.15', '< 2.0'  # Pagenation
gem 'activeadmin', '1.2.1'          # Admin
gem 'cancan', '1.6.10'              # Admin
gem 'draper', '3.0.1'               # Admin
gem 'pundit', '1.1.0'               # Admin
gem 'redcarpet', '3.4.0'            # Custom Markdown
gem 'coderay', '1.1.2'              # syntax highlight
gem 'bootstrap-sass', '~> 3.3.6'    # Bootstrap SaaS
gem 'bootstrap_form', '2.7.0'       # Bootstrap Form
gem 'jquery-rails', '4.3.1'         # JQuery
gem 'rails-i18n', '~> 5.1'          # i18n
gem 'acts-as-taggable-on', '~> 5.0' # Tags
gem 'marked-rails', '0.3.2.0'       # Markdown Rails
gem 'vuejs-rails', '2.5.13'         # Vue JS
gem 'font-awesome-rails', '4.7.0.3' # Awesome Font
# Self ADD Gems --------------------------------------- #

group :development, :test do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
# Self ADD Gems ----------------------- #
  gem 'letter_opener_web', '1.3.3'    # Web Mailer
  gem 'pry-rails', '0.3.6'            # Pry debug
  gem 'pry-doc', '0.13.3'             # Pry debug
  gem 'pry-byebug', '3.6.0'           # Pry debug
  gem 'pry-stack_explorer', '0.4.9.2' # Pry Stack
  gem 'rspec-rails', '~> 3.7'         # RSpec
  gem 'factory_bot_rails', '4.8.2'    # FactoryBot
  gem 'faker', '1.8.7'                # FactoryBot Facker
  gem 'ruby-debug-ide', '~> 0.6.1'    # IDE Remote debug
  gem 'debase', '~> 0.2.2'            # IDE Remote debug
# ------------------------------------- #
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
