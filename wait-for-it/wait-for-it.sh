# file wait-for-it.sh
#!/bin/sh
#HOST_PORT
#HOST_ADDRESS
#TIME_OUT_SECONDS
echo "@Author ozay.duman"
WAIT=0
while ! nc -z $HOST_ADDRESS $HOST_PORT; do
  sleep 1
  WAIT=$(($WAIT + 1))
  if [ "$WAIT" -gt $TIME_OUT_SECONDS ]; then
     echo "Error: Timeout wating for Postgres to start"
     exit 1
  fi
done

if  nc -z $HOST_ADDRESS $HOST_PORT;  then
	echo ">> Connected!"
	exec $COMMAND
else
	echo "Timeout for host address"
fi