# Plugins
  if yes?("Do you want to use RSpec for testing?")
    plugin "rspec", :git => "git://github.com/dchelimsky/rspec.git"
    plugin "rspec-rails", :git => "git://github.com/dchelimsky/rspec-rails.git"
    generate :rspec
  end

  plugin 'paperclip', :git => "git://github.com/thoughtbot/paperclip.git"
  plugin 'exception_notifier', :git => 'git://github.com/rails/exception_notification.git'

# Gems
  gem 'mislav-will_paginate', :version => '~> 2.2.3', :lib => 'will_paginate', :source => 'http://gems.github.com'
  gem "giraffesoft-resource_controller", :lib => "resource_controller",  :version => ">= 0.6.1", :source => "git://github.com/giraffesoft/resource_controller.git"
  gem 'RedCloth', :lib => 'redcloth'
  gem 'thoughtbot-factory_girl', :lib => 'factory_girl', :source => 'http://gems.github.com'
  gem 'faker'
  gem "authlogic", :version => ">= 2.0.9"
  rake "gems:install", :sudo => true

# Tidy up
  run "echo 'TODO add readme content' > README"
  run "cp config/database.yml config/database.yml.example"
  run "rm public/index.html"
  run "rm public/images/rails.png"
  run "rm public/javascripts/*.js"

# Setup Git
  git :init
  run "touch .gitignore"
  file ".gitignore", <<-END
log/*.log
tmp/**/*
config/database.yml
public/upload
upload
END
  git :add => ".", :commit => "-m 'initial commit'"




