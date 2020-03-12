
Discussion

This was developed and tested on AWS Cloud9 using an amazon Linux image. 

To run, execute this at the command line:

$ ./main.sh

This will build the docker image and run it in a container.

It will check that the Tika Server is up an running, then...

the file, foo.txt, will get transmitted to the tika server and 
interpret the language correctly as "es" 

To implemented firewall changes, do the following:

$ iptables -A INPUT -p tcp -m tcp --source 192.168.0.0/16 --dport 9998 -j ACCEPT -m time --timestart 07:00 --timestop 19:00
$ service iptables save


