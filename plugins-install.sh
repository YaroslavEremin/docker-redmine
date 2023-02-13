#!/bin/bash

# Agile plugin
bundle install --without development test --no-deployment
bundle exec rake redmine:plugins NAME=redmine_agile RAILS_ENV=production
