#!/bin/sh

setup_git() {
  git config --global user.email "travis@travis-ci.org"
  git config --global user.name "Travis CI"
}

commit_files() {
  # git checkout -b gh-pages
  git add test.npy
  git commit --message "Travis build: $TRAVIS_BUILD_NUMBER"
}

upload_files() {
  git remote add origin-pages https://${1}@github.com/mattclifford1/travis_test.git
  git push origin master 
}

setup_git
commit_files
upload_files
