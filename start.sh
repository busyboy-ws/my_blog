#!/bin/sh

hugo --baseUrl="/"
tar -cvzf blog.tar.gz public/
scp -r -i ~/.ssh/authorized_keys -P 102  ./public/ root@47.100.94.219:/opt/my-blog