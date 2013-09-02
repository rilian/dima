#!/bin/bash

echo 'After script'

echo 'Installing gems...'
bundle install --gemfile=/vagrant/Gemfile

echo 'Prepare database'
cd /vagrant && rake db:create && rake db:migrate && rake db:seed

echo 'Run Rails'
cd /vagrant && rails s
