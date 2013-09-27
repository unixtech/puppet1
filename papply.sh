#!/bin/sh
sudo puppet apply /var/git/manifests/site.pp --modulepath=/var/git/modules/ $*
