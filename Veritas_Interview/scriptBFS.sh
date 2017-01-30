DIRS=$1
LEVELS=$2

curlevel=0

queue=('. 0')
func(){
   for ((i=0;;i++))
   do
      ele=(${queue[0]})
      if [ "$ele" ]
      then
         echo -n
      else
         break
      fi
      dir=${ele[0]}
      level=${ele[1]}

      queue=("${queue[@]:1}") #delete processed ele from queue
      if [ $level -eq $LEVELS ]
      then
         continue
      fi

      cd $dir
      let newlevel=level+1
      workingdir=`pwd`
      for ((d=1;d<=$DIRS;d++));do
         mkdir $d
         if [ $newlevel -lt $LEVELS ]
         then
            queue+=("$workingdir/$d $newlevel")
         fi
      done
      cd -
      #echo "queue is: ${queue[@]}"
   done
}

func
