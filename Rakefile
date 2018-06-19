# frozen_string_literal: true

# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be
# available to Rake.

require_relative 'config/application'

Rails.application.load_tasks

Rake::Task['test'].clear
task default: :ci

task ci: %i[rubocop reek rails_best_practices haml_lint bundle_audit]

task :rubocop do
  sh 'rubocop --rails app/ db/seeds.rb Gemfile Rakefile'
end

task :reek do
  sh 'reek -c config/defaults.reek app/ db/seeds.rb Gemfile Rakefile ' \
    'config/routes.rb'
end

task :rails_best_practices do
  sh 'rails_best_practices'
end

task :haml_lint do
  sh 'haml-lint app/views/'
end
