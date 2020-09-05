#!/usr/bin/env python
# coding: utf-8




import pandas as pd



df = pd.read_csv('chk.txt', sep = '\s+', usecols=[2, 6], names= ["J", "delta"])
df.head()
pd.set_option('display.max_rows', df.shape[0]+1)

print(df.groupby("J").delta.describe())




