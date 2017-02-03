#!/bin/bash
while :
  do
  declare largestpid;
  declare -i largest=0;
# declare -i total=0;
    pids=( $(ps -u $1 | awk '{print $1}') );
      for i in ${pids[@]:1};
      do
      declare -i prec=( $(ps -p "$i" -o %cpu |  sed "s/[^0-9]//g") );

      if [ ${prec:+1} ];
        then
        if ((largest < prec));
          then
          declare -i largest="$prec"
          declare largestpid="$i"
        fi;
#        total=$(($total+$prec))
      fi;
      done

  if ((largest/10 > $2))
    then
    cpulimit -p "$largestpid" -l "$2"
 fi;

  sleep 600
done
