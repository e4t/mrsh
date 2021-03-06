#!/bin/sh
##
# $Id$
##

echo "running aclocal ... "
aclocal -I config
echo "running libtoolize ... "
libtoolize --automake --copy 
echo "running autoheader ... "
autoheader
echo "running automake ... "
automake --copy --add-missing 
echo "running autoconf ... "
autoconf
echo "now run ./configure to configure mrsh for your environment."
