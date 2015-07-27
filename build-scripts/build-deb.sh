#!/bin/bash

# Get parameters from DEBIAN/control
function getParam {
	cat src/DEBIAN/control \
		| grep $1 \
		| sed "s|$1: ||"
}

# Building .deb package
fakeroot dpkg-deb --build src

# Rename new package
PKG_NAME="`getParam Package`_`getParam Version`_`getParam Architecture`.deb"
mv src.deb "$PKG_NAME"
