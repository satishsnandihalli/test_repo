filename="$1"
newfilename="$1_1"

#dashes=$(printf '\055%.0s' {1..40})
#line="A boy is here"
#echo "40 : $dashes"
#one=1
#i=${dashes:$one}
#echo "39 : $i"
#echo "length: ${#i}"
while read -r line
do

echo "line: $line"

dashes=$(printf '\055%.0s' {1..40})
echo $dashes
words=$(IFS=' '; set -- $line; echo $#)
let myvar=${#dashes}-${#line}
if [ $myvar -lt 0 ]
then
   echo "length of the line in file is greater than ${#dashes}"
   continue
fi
let div=$words-1
if [ $div -gt 0 ]
then
   let rest=$myvar/$div
   let remain=$myvar-$rest*$div
   echo "myvar: $myvar , div: $div , remain: $remain"
   #echo "rest is before: $rest"
   let rest=${#dashes}-$rest-1
   #echo "rest is : $rest"
   delim=${dashes:$rest}
else
   echo ""
   #echo "myvar: $myvar , div: $div , remain: $remain"   
fi



let count=1
for word in $line
do
   if [ $words -eq 1 ]
   then
      let l=${#word}
      dashes=${dashes:$l}
      printf "%s%s" $dashes $word | tr '-' ' ' >> $newfilename
      echo $dashes
   elif [ $count -ne $words ]
   then
      if [ $remain -gt 0 ]
      then
         printf "%s%s " $word $delim | tr '-' ' ' >> $newfilename
         let remain-=1
      else
         printf "%s%s" $word $delim | tr '-' ' ' >> $newfilename
      fi

      let l=${#word}+${#delim}
      dashes=${dashes:$l}
      echo $dashes
   else
      let l=${#word}
      dashes=${dashes:$l}
      printf "%s" $word | tr '-' ' ' >> $newfilename
      echo $dashes
   fi
   let count+=1
done
   printf "\n" >> $newfilename
done < "$filename"
