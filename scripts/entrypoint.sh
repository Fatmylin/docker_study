#!/bin/bash

bundle exec rails db:create db:migrate

rm -f tmp/pids/server.pid
rake tmp:clear

bundle exec rails s -b 0.0.0.0
