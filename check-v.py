#!/usr/bin/env python
# coding: utf-8




import pandas as pd



df = pd.read_csv('chk.txt', sep = '\s+', usecols=[6,10], names= [ "delta", "v"])
print(df.delta.mad())
pd.set_option('display.max_rows', df.shape[0]+1)

print(df.groupby("v").delta.describe())




