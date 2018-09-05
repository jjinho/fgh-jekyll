#!/bin/sh

rm -rf _site

jekyll build

rm _site/feed.xml
