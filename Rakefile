# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be
# available to Rake.

require File.expand_path('../config/application', __FILE__)

Rails.application.load_tasks

task default: :test

task test: [
  :rubocop, :reek
]

task :rubocop do
  sh 'rubocop --rails app/ db/seeds.rb Gemfile Rakefile'
end

task :reek do
  sh 'reek app/ db/seeds.rb Gemfile Rakefile'
end
