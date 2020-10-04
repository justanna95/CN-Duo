#!/bin/bash



grep ")(   2" A_fit.en | tail -3966 |awk '{print $7}' >A.diff
cat A.diff | tr -d '-' > A.absdiff
awk '{ total += $1; count++ } END { print total/count }' A.absdiff
