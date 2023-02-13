#!/bin/bash

# Aplay Agile plugin migrations
bundle exec rake redmine:plugins NAME=redmine_agile RAILS_ENV=production
