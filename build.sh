#!/usr/bin/env bash
[ -d /var/www/html ] && rm -rf /var/www/html && bundle exec jekyll build --destination /var/www/html

