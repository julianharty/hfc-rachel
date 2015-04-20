#!/usr/bin/env bash
# This is a spike to try updating RACHEL with the PHET exercises in HTML5.
# Author: Julian Harty
if git --version  >/dev/null 2>&1; then
    echo git found, continuing...
else
    echo git not found. Please install with sudo apt-get install git-core
    exit 1
fi
git clone https://github.com/phetsims/sherpa.git
git clone https://github.com/phetsims/sun.git
git clone https://github.com/phetsims/scenery-phet.git
git clone https://github.com/phetsims/scenery.git
git clone https://github.com/phetsims/phet-core.git
git clone https://github.com/phetsims/dot.git
git clone https://github.com/phetsims/kite.git
git clone https://github.com/phetsims/axon.git
git clone https://github.com/phetsims/vegas.git
git clone https://github.com/phetsims/phetcommon.git
git clone https://github.com/phetsims/chipper.git
git clone https://github.com/phetsims/vibe.git
git clone https://github.com/phetsims/joist.git
git clone https://github.com/phetsims/brand.git
git clone https://github.com/phetsims/assert.git

# The first of the actual PHET Exercises
git clone https://github.com/phetsims/balancing-act.git
