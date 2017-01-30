DIRS=$1
LEVELS=$2

curlevel=0

func1(){
   local curlevel
   local dir
   cd $1
   let curlevel=$2+1
   for ((dir=1;dir<=DIRS;dir++));do
     mkdir $dir

     if [ $curlevel -eq $LEVELS ]
     then
       continue
     else
       func1 $dir $curlevel
     fi

   done
   cd ..
   return 0
}

func(){
    let crlevel+=1
    for ((di=1;di<=DIRS;di++));do
      if [ $LEVELS -gt 0 ]
      then
        mkdir -p $di
        if [ $crlevel -eq $LEVELS ]
        then
          continue
        else
          func1 $di $crlevel
        fi
      fi
    done
    return 0
}

func