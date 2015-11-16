
#!bin/bash

# Author Zoilo Dela Cruz
# 11/16/2015


case "$1" in
 deploy)
        deploy
        ;;
 stop)
        stop
        ;;
 restart)
       stop
       start
       ;;
 tail)
       tomcatTail
       ;;
 status)
       status
       ;;
 clear)
       if [[ -n "$2" ]]; then
       	remove $1 $2
       fi	   
	   ;;
*)
        echo "Usage: $0 {start|stop|restart|tail|status|clear agrs}"
        exit 1
        ;;
esac
exit 0