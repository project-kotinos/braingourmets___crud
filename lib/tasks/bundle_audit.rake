# frozen_string_literal: true

namespace :bundle_audit do
  ##
  # Loads bundler-audit. The require is within a method as it fails if the
  # bundler-audit gem is not loaded (e.g., on deployment).
  #
  def include_bundler_audit
    require 'bundler/audit/cli'
  end

  desc 'Update bundle-audit database'
  task :update do
    include_bundler_audit
    Bundler::Audit::CLI.new.update
  end

  desc 'Check gems for vulnerabilities using bundle-audit'
  task :check do
    include_bundler_audit
    Bundler::Audit::CLI.new.check
  end

  desc 'Update vulnerabilities database and check gems using bundle-audit'
  task :run do
    Rake::Task['bundle_audit:update'].invoke
    Rake::Task['bundle_audit:check'].invoke
  end
end

task :bundle_audit do
  Rake::Task['bundle_audit:run'].invoke
end
