#!/bin/sh

ssh pablo.local "git clone https://github.com/kek/sofa; cd sofa; git status; git checkout -- .; git pull; sh build.sh; sudo rsync -r _build/prod/rel/hello/* ~pi/hello; sudo systemctl restart hello"
