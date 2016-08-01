#!/bin/sh
### Winterberg Kernstadt
FOUND=`ps ax | grep /usr/sbin/alfred | grep wtbgALFRED`
if  [ -n "$FOUND" ] ; then
        echo "$(date) - wtbgALFRED is running"
                # echo "$(date) - wtbgALFRED is running" >> /var/log/alfred.log
else
        echo "$(date) - wtbgALFRED is NOT running!!!" >> /var/log/alfred.log
                start-stop-daemon -b --start -n wtbgALFRED --exec /usr/sbin/alfred -- -i wtbgALFRED -u /var/run/wtbgALFRED.sock -b wtbgBAT
fi
sleep 1

### Winterberg Doerfer
FOUND=`ps ax | grep /usr/sbin/alfred | grep doerferALFRED`
if  [ -n "$FOUND" ] ; then
        echo "$(date) - doerferALFRED is running"
                # echo "$(date) - doerferALFRED is running" >> /var/log/alfred.log
else
        echo "$(date) - doerferALFRED is NOT running!!!" >> /var/log/alfred.log
                start-stop-daemon -b --start -n doerferALFRED --exec /usr/sbin/alfred -- -i doerferALFRED -u /var/run/doerferALFRED.sock -b doerferBAT
fi
sleep 1

### Medebach
FOUND=`ps ax | grep /usr/sbin/alfred | grep mdbALFRED`
if  [ -n "$FOUND" ] ; then
        echo "$(date) - mdbALFRED is running"
                # echo "$(date) - mdbALFRED is running" >> /var/log/alfred.log
else
        echo "$(date) - mdbALFRED is NOT running!!!" >> /var/log/alfred.log
                start-stop-daemon -b --start -n mdbALFRED --exec /usr/sbin/alfred -- -i mdbALFRED -u /var/run/mdbALFRED.sock -b mdbBAT
fi
sleep 1

### Hallenberg
FOUND=`ps ax | grep /usr/sbin/alfred | grep hlbALFRED`
if  [ -n "$FOUND" ] ; then
        echo "$(date) - hlbALFRED is running"
                # echo "$(date) - hlbALFRED is running" >> /var/log/alfred.log
else
        echo "$(date) - hlbALFRED is NOT running!!!" >> /var/log/alfred.log
                start-stop-daemon -b --start -n hlbALFRED --exec /usr/sbin/alfred -- -i hlbALFRED -u /var/run/hlbALFRED.sock -b hlbBAT
fi
sleep 1

### Siedlinghausen
FOUND=`ps ax | grep /usr/sbin/alfred | grep sdlhALFRED`
if  [ -n "$FOUND" ] ; then
        echo "$(date) - sdlhALFRED is running"
                # echo "$(date) - sdlhALFRED is running" >> /var/log/alfred.log
else
        echo "$(date) - sdlhALFRED is NOT running!!!" >> /var/log/alfred.log
                start-stop-daemon -b --start -n sdlhALFRED --exec /usr/sbin/alfred -- -i sdlhALFRED -u /var/run/sdlhALFRED.sock -b sdlhBAT
fi
sleep 1

### Hoehendoerfer
FOUND=`ps ax | grep /usr/sbin/alfred | grep hdALFRED`
if  [ -n "$FOUND" ] ; then
        echo "$(date) - hdALFRED is running"
                # echo "$(date) - hdALFRED is running" >> /var/log/alfred.log
else
        echo "$(date) - hdALFRED is NOT running!!!" >> /var/log/alfred.log
                start-stop-daemon -b --start -n hdALFRED --exec /usr/sbin/alfred -- -i hdALFRED -u /var/run/hdALFRED.sock -b hdBAT
fi
