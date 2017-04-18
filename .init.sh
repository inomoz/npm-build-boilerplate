#!/bin/bash

cd "$(dirname "$0")"

function init_boilerplate {
  svn export https://github.com/h5bp/html5-boilerplate/trunk/dist src
  cd src
  rm .editorconfig .gitattributes .gitignore .htaccess
  rm -r css
  rm -r js/vendor
  mkdir sass
  mkdir img/icons
}

if [ -d "src" ]; then
  read -p "Remove src directory and download boilerplate?" -n 1 -r
  echo    # (optional) move to a new line
  if [[ $REPLY =~ ^[Yy]$ ]]
  then
    rm -rf src/
    init_boilerplate
  fi
else
  init_boilerplate
fi

read -p "Install bulma NPM module? " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    npm install bulma --save
    echo "@import ../../node_modules/bulma/bulma.sass" >> $(dirname "$0")/sass/main.sass
fi
