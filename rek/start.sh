#!/bin/bash

RAILS_ENV=production bundle exec rake assets:precompile
SECRET_KEY_BASE=$(rake secret) rails s Puma -e production -b 0.0.0.0 -p 80 > /dev/null