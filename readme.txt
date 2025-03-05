What is a bash script on Linux?
You can type all kinds of commands in the terminal. For example, pwd shows you the current directory. 
You can type the date command and it will show you the current date. Echo returns what we type. Like echo “Hello” gives Hello. 


First Script
A Linux bash script is essentially a series of Linux commands. And those can be stored in a file called a 
bash script.
Nano scriptName .sh. And write our commands in it like echo “hello”. Echo “first bash”. 
To make sure that Linux understands this is a bash script, we add a header. It's basically a line of text 
that's always the same. #!/bin/bash

And save it. Now if we try to run it using fileName.sh. It will not run because it is not executable and 
linux does not understand it as a program. To make it executable, we make it chmod +x fileName.sh. 
Then we write ./fileName.sh and it will run. 
We need to type ./. If we don’t type, it will not run. Alternatively, we can use bash fileName.sh to run it. 


Take input from keyboard in Script 
Now we will take input. 
echo “What is your name?”
read name (The name is variable we used so it will store the name entered by the user)
echo “Hello name” (It will print Hello Name not the name entered by the user). If we want to use variable name, then we need to use $ before it. 
echo “Hello $name”

#!/bin/bash
echo "What is your name?"
read name
echo "Hello name"
echo "Hello $name"
echo "What is your age"
read age
echo "$name age is $age"


FireWall Basics 
A firewall is like a guard for your computer. It tells you which network traffic is allowed and which network traffic is denied. Linux comes with a firewall by default.

You can type ufw to check the firewall. If it is an error then first check its status sudo ufw status. 
So sudo ufw default deny outgoing. 
sudo ufw default deny incoming

Now anything we do with the internet will be blocked. It is secure but we will not be able to use internet as well. First active this, like “sudo ufw enable” to make firewall active.  

sudo UFW status verbose. It will tell you that the default is to deny incoming and outgoing internet traffic when you enable firewall.

Now if we want to allow web then we can use sudo ufw allow out https, sudo ufw allow out http. 
To allow the domain part, we need to allow sudo ufw allow out 53. So like domain name we want to allow udemy.com it will be allowed and linux will take care of it. 

These all above are only that we can access web no one can call us or connect with us because we have not allowed incoming traffic. 
To check the allowed rules, run the command sudo ufw status verbose. 

If you want to reset this, you can use the command sudo ufw reset and press yes. All rules will be deleted. 

All applications like zoom skype, that communicate with the internet. They use a communication port or simply port. So we can check that with the command netstat -antop. If it is not installed, you can install it with sudo apt install net-tools. 



Firewall Config
We typed a lot of firewalls while configuring the firewall in the previous lecture. If we want to do this for other computers we will get bored of typing the same commands again and again. So we can make a bash script. 
Write all above commands in a single file and execute that file. First activate or enable the firewall. Make this file executable then run it. 


Audit Script
Who is logged in? Disk space usage?  Memory Usage? Running Programs? 
#!/bin/bash

echo "who is logged in"
whoami

echo "disc space usage: "
df -h

echo "memory usage: "
free -h

echo "running programs "
ps aux

echo “network connections ”
netstat -antop

You can use ls to check files. If you don’t see the name green, which means it is not executable, you can make it executable by using chmod +x or right click on it and properties and allow it as executeable. 



Real Life Audit Script
#!/bin/bash

#get system information
echo "host name: $(hostname)"
echo "linux version: $(uname -r)"
echo "system uptime: $(uptime -p)"
echo "---------------------------------------------------------"

#user information
echo "logged in $(whoami)"
echo "---------------------------------------------------------"

#network security checks
echo "firewall status: "
sudo ufw status
echo "------------------------------------------------------------"

#network activity
netstat -antop



Anti Virus 
There's lots of malware for Linux, lots of malicious software, viruses, kits, reverse shells, and lots of other things. So it's a good idea or a good practice to check for viruses or malicious software on Linux. One of the ways to do that is with clam AV programs. First we need to install it. 
Sudo apt-get install clamav to install it. Use the command clamscan -r directoryName. 



Cronjob Antivirus
crontab -e. You can use it to schedule the script. It will open the file and we can write what command we want to run and with what frequency. Like what to run and when to run like every week 5am or every month etc., 


Note: Don’t Download scripts from google as hackers can get your data. 
