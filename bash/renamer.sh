
#!/bin/bash
now=$(date +"%Y-%m-%d")
cd $1
echo "directory submitted successfully!"

if  [[ ($2="-c" || $2="--copy") && ! -z $2 ]]
then
    for f in *; do 
        echo "name: $f type: ${f##*.} -> making copy: $now-$f"
    done    
fi    
echo "--------------------------------------"
for f in *; do 
echo "name: $f type: ${f##*.} -> changing name to: $now-$f"
mv  "$f" "$now-$f"
done
