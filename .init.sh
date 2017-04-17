#!/bin/bash

cd "$(dirname "$0")"

svn export https://github.com/h5bp/html5-boilerplate/trunk/dist src
rm src/.editorconfig src/.gitattributes src/.gitignore src/.htaccess
