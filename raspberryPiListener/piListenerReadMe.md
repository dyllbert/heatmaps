Flash a raspberry pi 4 with the latest version of Kali Linux(for best results, other versions results may vary)

Setup the Pi to automatically boot and log in when it gets power

Follow this guide to enable ssh over ethernet cable: https://carbonstone.blogspot.com/2014/02/connecting-to-pi-from-laptops-ethernet.html

SSH into the Pi over a local ethernet cable connection (this is because you can't have a stable WiFi connection once we switch over to monitor mode)

Open a terminal on the Pi

Make yourself the superuser (its worth it, just do this every time you log in): 'sudo su'

Use 'monstart' to enable monitor mode on the Pi

Start another screen in your terminal with the 'screen' command (this will allow you to disconnect the ssh session without ending a running process, see the man page for screen)

Run the 'getMacs.sh' script after chaning the amount of time you want if desired and making sure your wireless monitor mode interface is called 'wlan0mon'

Detach your screen (ctrl+a+d, see screen man page)

You may now leave the Pi where ever it is plugged in for as long as the getMacs.sh script is running

Come back, re-plug in your ethernet cable and ssh back into the Pi

Re-attach to your screen session (screen -r)

Confirm that everything is done running by looking at your proccesses (top or htop)

You can kill the screen now if you want (ctrl+a+k)

You know have the raw data, you can use the provided get, add and store scripts to do some initial analysis, but you will really want you will really want to know how to use the following bash commands:

  grep
  
  awk
  
  wc
  
  sort
  
  uniq
  
  Bash piping
  
  sed
  
With those you should be able to parse through all the data you want.  You can also remove the data from the Pi and preform analysis in your choice of other applications.

