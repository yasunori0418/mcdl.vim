#!/bin/bash

for file in ./dein/*; do
    rm -rf $file
done
rm -rf dein/.cache
