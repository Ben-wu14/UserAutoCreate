#!/bin/bash
# Create by Ben wu // Email:ben_wu@qq.com
pw=$1
us=$1
group=$2
usd="/home/$us"
useradd -m -d $usd -G $group -s /bin/bash $us
chown -R $us:$us $usd
chmod 770 $usd
echo $us:$pw | chpasswd
