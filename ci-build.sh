#!/bin/bash

set -x

cd src
make wm_names.t
make vk_names.t
cd ..
make
bin/mintty.exe --help
bin/mintty.exe --version
mintty.exe --log mintty.log --exec echo hello mintty
grep hello mintty.log
