
g_pass=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 11 | head -n 1)

name="password"
num=1

while [ -f "$name$num.txt" ]
do
 num=$((num+1))
done

`touch "$name$num.txt"`
fname="$name$num.txt"
echo "$num$g_pass" > $fname
