#!/bin/sh

rm -rf _site

jekyll serve --host $IP --port $PORT --baseurl '/'
