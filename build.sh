#!/bin/sh

# compile & install
autoreconf --force --install
rm -rf build/
mkdir -p build && cd build/

# Disabling sanitizers is important for release versions!
# The prefix and sysconfdir are, obviously, dependent on the distribution.

../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers
make
sudo make install
