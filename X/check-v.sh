

export PATH=/home/561/as6783/.local/bin/:$PATH
export PYTHONPATH=/home/561/as6783/.local/lib/python3.7/site-packages:$PYTHONPATH


module load python3
grep ")(" X_chk.en  > chk.txt


python3 check-v.py
