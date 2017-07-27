#!/bin/sh
inp=$1
for i in $(objdump -d $inp | grep "^ " | cut -f2); do echo -n '\x'$i; done; echo
