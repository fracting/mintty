#!/bin/bash

cd src
make wm_names.t
make vk_names.t
cd ..
make
bin/mintty.exe --help
bin/mintty.exe --version
mintty.exe --log mintty.old.log --exec echo hello mintty
strace -o mintty.strace.txt -f bin/mintty.exe --log mintty.new.log --exec echo hello mintty
ls -al
pwd
ps aux
cat mintty.old.log
grep hello mintty.old.log
cat mintty.new.log
grep hello mintty.new.log
cat mintty.strace.txt
