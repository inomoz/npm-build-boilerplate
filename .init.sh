#!/bin/bash

cd "$(dirname "$0")"

svn export https://github.com/h5bp/html5-boilerplate/trunk/dist src
cd src
rm .editorconfig .gitattributes .gitignore .htaccess
rm -r css
rm -r js/vendor
mkdir sass
mkdir img/icons
touch sass/main.sass
