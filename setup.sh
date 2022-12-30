#!/bin/bash

cd ffi
make
cd ..

cd native
ruby extconf.rb
make
cd ..

bundle install
