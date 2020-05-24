#!/bin/bash

echo "1st" > 1st.txt
echo "create 1st.txt"
echo "wait 3 sec..."
sleep 3
echo "2nd" > 2nd.txt
echo "create 2nd.txt"
ls --full-time 1st.txt 2nd.txt

if [ 2nd.txt -nt 1st.txt ]; then
  echo "2nd.txt is newer than 1st.txt"
fi

if [ 1st.txt -ot 2nd.txt ]; then
  echo "1st.txt is older than 2nd.txt"
fi

rm 1st.txt 2nd.txt