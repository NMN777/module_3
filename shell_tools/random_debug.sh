cnt=0
until [[ "$?" -ne 0 ]];
do
    cnt=$(( cnt + 1 ))
    ./random.sh &> output.txt
done

echo "Error occured after $cnt runs"
cat output.txt