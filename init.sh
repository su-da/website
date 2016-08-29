#!/bin/sh
git clone -b gh-pages --separate-git-dir .deploy_git --depth=1 https://github.com/su-da/website.git public
cp public/.git static/
