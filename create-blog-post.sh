#!/bin/bash

YEAR=2025

SCRIPT=$(readlink -f $0)
SCRIPTPATH=`dirname $SCRIPT`

name=$(gum input --header="File Name?")

if [ -z $name ]; then
	exit 1
fi

cp $SCRIPTPATH/example.md $SCRIPTPATH/content/blog/$YEAR/$name.md || exit

gum confirm "Open Post?" && $EDITOR $SCRIPTPATH/content/blog/$YEAR/$name.md
