#!/bin/bash

# Change this value your custom location
CLONE_PATH='repos'

function clone () {
	# CD to folder where git repos are kept
	cd $HOME/$CLONE_PATH

  echo "Cloning repositories"

	git clone git@github.com:celestehorgan/hugo-netlify-starter.git
  git clone git@github.com:celestehorgan/community.git
  git clone git@github.com:celestehorgan/kubernetes-website.git

}

clone
unset clone
