#!/bin/sh
HTTP_HOME=/wtaweb/IHS/webserver1

cd $HTTP_HOME/bin
./apachectl stop

echo "Waiting 10 seconds for all httpd processes to stop...."
sleep 10

echo "Okay, here we go - killing all processes, semaphores and shared memory objects for siteminder"

# Kill the LLAWP processes - works! #######################################
cd $HTTP_HOME/bin
        for PID in `ps -aef | grep LLAWP | grep -v grep | grep ihsadm | awk '{print $2}'`
        do
                kill -9 $PID
        done
cd $HTTP_HOME/bin
        for PID in `ps -aef | grep LLAWP | grep -v grep | grep ihsadm | awk '{print $2}'`
        do
                kill -9 $PID
        done

echo "LLAWP killed...."

cd $HTTP_HOME/bin
        for SHMID in `ipcs -m | grep ihsadm | grep -v grep | awk '{print $2}'`
        do
                ipcrm -m $SHMID
        done

echo "Shared Memory Objects killed...."

cd $HTTP_HOME/bin
        for SEMID in `ipcs -s | grep ihsadm | grep -v grep | awk '{print $2}'`
        do
                ipcrm -s $SEMID
        done

echo "Semaphore Objects killed...."

echo "Need to kill any residue http processes.  This will take at least 1 minute.  Be patient..."

cd $HTTP_HOME/bin
        for PID in `ps -aef | grep webserver1 | grep -v grep | grep ihsadm | awk '{print $2}'`
        do
                kill $PID
        done
