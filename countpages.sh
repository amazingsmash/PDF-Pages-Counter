while read f ; do 
c=$(mdls -n kMDItemNumberOfPages "$f" | cut -c24-); 
sum="$(($sum+$c))";
echo "$f -> $c pages"; 
done < <(find . -name "*.pdf")
echo "Total pages $sum"

