#!/bin/bash



grep ")(   3" B_fit.en | tail -1105 |awk '{print $7}' >A.diff
cat A.diff | tr -d '-' > A.absdiff
awk '{ total += $1; count++ } END { print total/count }' A.absdiff
