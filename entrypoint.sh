#!/bin/bash -eux

bundle config set --local path '/app/vendor/bundle'
bundle install
bundle exec rake db:create
bundle exec rake db:migrate

# NOTE: `A server is already running. Check /app/tmp/pids/server.pid.` の発生を防ぐ
rm -f /app/tmp/pids/server.pid
/bin/bash