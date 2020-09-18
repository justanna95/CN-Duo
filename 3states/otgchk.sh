#!/bin/bash


grep ")(   1" 3state_fit.en | tail -1793 |awk '{print $7}' >A.diff
cat A.diff | tr -d '-' > A.absdiff
awk '{ total += $1; count++ } END { print total/count }' A.absdiff


grep ")(   2" 3state_fit.en | tail -3966 |awk '{print $7}' >A.diff
cat A.diff | tr -d '-' > A.absdiff
awk '{ total += $1; count++ } END { print total/count }' A.absdiff

grep ")(   3" 3state_fit.en | tail -1105 |awk '{print $7}' >A.diff
cat A.diff | tr -d '-' > A.absdiff
awk '{ total += $1; count++ } END { print total/count }' A.absdiff
