#!/usr/bin/env bash
set -ex
export DEBIAN_FRONTEND=noninteractive
apt-get update && apt-get install -y tzdata
gem install bundler -v 2.0.1
# before_install
gem update --system
gem --version
gem update bundler
bundle --version
bundle update --bundler
bundler --version
# install
bundle install --jobs=3 --retry=3
# before_script
bundle exec rails version
RAILS_ENV=test bundle exec rails db:migrate
RAILS_ENV=test bundle exec rails db:migrate:status
# script
RAILS_ENV=test bundle exec rake --trace ci
RAILS_ENV=test bundle exec rails assets:precompile
gem install brakeman
brakeman -z -5
