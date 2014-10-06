ls -l
ls -al
rm .bash_history 
vi .profile 
su
ps aux
ps aux|grep kiwix
vi /etc/rc.local 
cd /etc/apache2/mods-enabled/
ls -l
ls -ltr
cd ../sites-available/
vi default
exit
ls -l
su
ls -l
cd kiwix-data
su
exit
su
exit
su
ls -l
df -h
df
exit
su
ls -l
df
exit
man resize2fs 
bc
su
df -h
su
df
fdisk -l
su
top
su
df -h /dev/root
sudo passwd root
python -V
sudo apt-get install python-m2crypto
git clone https://github.com/learningequality/ka-lite.git
ls -al
cd ka-lite
./setup_linux.sh
;
cd/kalite
cd kalite
ls -al
nano settings.py
sudo apt-get install nginx
sudo rm /etc/nginx/sites-enabled/default
cd ..
cd~
cd ~
sudo rm /etc/nginx/sites-enabled/default
cd /etc
ls -al
cd nginx
ls -al
cd sites-enabled
ls -al
cat default
cd ~
sudo rm /etc/nginx/nginx.conf
sudo touch /etc/nginx/nginx.conf
user www-data;
nano /etc/nginx/nginx.conf
sudo nano /etc/nginx/nginx.conf
sudo service kalite stop
;
sudo service kalite start
cd /var/www
sudo rmdir -R ka
sudo rmdir ka
sudo rm -R ka
cat > /home/pi/setwanip.sh << 'EOF'newip=$(/sbin/ifconfig |grep -A1 "eth0"| awk '{ if ( $1 == "inet" ) { print $2 }}'|cut -f2 -d":")
echo $newip
sed -i -r 's/(\b[0-9]{1,3}\.){3}[0-9]{1,3}\b'/$newip/ /var/www/index.html
EOF

chmod +x /home/pi/setwanip.sh
sudo sed -i '13i\# Set the KA-Lite IP to the current WAN IP' /etc/rc.local
sudo sed -i '14i\/home\/pi\/setwanip.sh&' /etc/rc.local
reboot
sudo reboot
nano /etc/udhcpd.conf
sudo nano /etc/udhcpd.conf
sudo nano ifconfig
sudo nano /etc/network/interfaces
sudo poweroff
chmod 777 /var/www/CONTENIDO_LOCAL
sudo chmod 777 /var/www/CONTENIDO_LOCAL
sudo nano /etc/samba/smb.conf
sudo restart smbd
sudo nano /etc/samba/smb.conf
sudo chown:pi /var/opt/pi

sudo nano /etc/samba/smb.conf
sudo reboot
sudo nano /etc/samba/smb.conf
sudo shutdown -H -p now
sudo shutdown -h -P now
