

export PATH=/home/561/as6783/.local/bin/:$PATH
export PYTHONPATH=/home/561/as6783/.local/lib/python3.7/site-packages:$PYTHONPATH



module load python3
grep ")(" 3state_chk.en  > chk.txt


python3 ../check-el.py
