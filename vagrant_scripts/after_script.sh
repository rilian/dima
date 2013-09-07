#!/bin/bash

echo 'After script'

echo 'Installing gems...'
bundle install --gemfile=/vagrant/Gemfile

echo 'Run Rails'
cd /vagrant && rails s -p 3005 -d
