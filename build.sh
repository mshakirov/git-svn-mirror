#!/usr/bin/env bash

set -xeuo pipefail
IFS=$'\n\t'

apk update
apk add git-svn perl-git ruby bash
#gem install git-svn-mirror --no-document
gem build git-svn-mirror.gemspec
gem install git-svn-mirror-0.1.gem --no-document