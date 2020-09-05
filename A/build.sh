#!/bin/bash

cat A.poten > temp.inp
cat $3 1>> temp.inp
cat $2 1>> temp.inp
cat $1 1>> temp.inp
echo 'end' 1>> temp.inp

./../j-duo-2402.x < temp.inp > temp.out &
