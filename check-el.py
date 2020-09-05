#!/usr/bin/env python
# coding: utf-8




import pandas as pd



df = pd.read_csv('chk.txt', sep = '\s+', usecols=[2,6,9,10], names= [ "J", "delta", "el", "v"])
df.head()
pd.set_option('display.max_rows', df.shape[0]+1)

el = [1,2,3]
for i in el:
	sub = df.query("el== @i")
	print(f"Electronic state {i}")
	print(sub.groupby("v").delta.describe())
	print(sub.groupby("J").delta.describe())
