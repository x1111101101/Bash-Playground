str=""
for ((i=1; i<=10; i++)); do
    for ((k=1; k<=i; k++)); do
        str+="*"
    done
    str+=$'\n'
done
echo "$str"

str=""
i=0
while [ $i -lt 10 ]; do
    i=$((i+1))
    k=0
    while [ $k -lt $i ]; do
       str+="*"
       k=$((k+1))
       done
    str+=$'\n'
    done
echo "$str"
