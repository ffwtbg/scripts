#!/bin/bash
FOUND=`batctl -m wtbgBAT if | grep wtbgTUN`

if  [ -n "$FOUND" ] ; then
        echo "$(date) - Interface wtbgTUN is available" >> /var/log/bridge_tun.log
else
        echo "$(date) - Interface wtbgTUN is NOT available" >> /var/log/bridge_tun.log
        batctl -m wtbgBAT if add wtbgTUN
fi
sleep 1

FOUND=`batctl -m doerferBAT if | grep doerferTUN`

if  [ -n "$FOUND" ] ; then
        echo "$(date) - Interface doerferTUN is available" >> /var/log/bridge_tun.log
else
        echo "$(date) - Interface doerferTUN is NOT available" >> /var/log/bridge_tun.log
        batctl -m doerferBAT if add doerferTUN
fi
sleep 1

FOUND=`batctl -m mdbBAT if | grep mdbTUN`

if  [ -n "$FOUND" ] ; then
        echo "$(date) - Interface mdbTUN is available" >> /var/log/bridge_tun.log
else
        echo "$(date) - Interface mdbTUN is NOT available" >> /var/log/bridge_tun.log
        batctl -m mdbBAT if add mdbTUN
fi
sleep 1

FOUND=`batctl -m hlbBAT if | grep hlbTUN`

if  [ -n "$FOUND" ] ; then
        echo "$(date) - Interface hlbTUN is available" >> /var/log/bridge_tun.log
else
        echo "$(date) - Interface hlbTUN is NOT available" >> /var/log/bridge_tun.log
        batctl -m hlbBAT if add hlbTUN
fi
sleep 1

FOUND=`batctl -m sdlhBAT if | grep sdlhTUN`

if  [ -n "$FOUND" ] ; then
        echo "$(date) - Interface sdlhTUN is available" >> /var/log/bridge_tun.log
else
        echo "$(date) - Interface sdlhTUN is NOT available" >> /var/log/bridge_tun.log
        batctl -m sdlhBAT if add sdlhTUN
fi
sleep 1

FOUND=`batctl -m hdBAT if | grep hdTUN`

if  [ -n "$FOUND" ] ; then
        echo "$(date) - Interface hdTUN is available" >> /var/log/bridge_tun.log
else
        echo "$(date) - Interface hdTUN is NOT available" >> /var/log/bridge_tun.log
        batctl -m hdBAT if add hdTUN
fi
sleep 1
