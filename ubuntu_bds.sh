#!/bin/sh
LANG=en_US.UTF-8
echo "一键开MC的基岩版服务器Linux脚本正在运行！ "
sleep 1
echo "此脚本由火神80制作！我的B站主页链接：https://space.bilibili.com/382814205/\本脚本在GitHub上开源：https://github.com/huoshen80/deploy  "
sleep 1
echo "请先确认你是否拥有root权限！如果没有请先输入su do root，再输入root密码，再打开本脚本! "
sleep 1
echo "请先确认你的服务器是不是Ubuntu18.04或以上版本，再打开本脚本!本脚本不适合Ubuntu18.04以下或者centos系统等 "
sleep 1
echo "你是否要继续进行? "
sleep 1
if [ $(whoami) != "root" ]; then
	echo "请使用root权限执行本脚本!!！"
	exit 1
fi
read -p "请输入y（确认）/n（取消）[Y/n]" input
case $input in
[yY][eE][sS] | [yY])
	echo "Yes"
	;;
[nN][oO] | [nN])
	echo "No"
	exit 1
	;;
*)
	echo "请输入y（确认）/n（取消）"
	exit 1
	;;
esac
echo " 现在开始更新软件源,这可能会需要一点儿时间！"
sleep 2
apt-get update -y;
apt-get upgrade -y;
echo " 软件源更新完成，现在开始安装screen，如果安装失败请自行更换软件源，可以更换为阿里源! "
sleep 2
apt-get install screen -y
echo "screen已安装完成，现在开始在/home文件夹内新建MC文件夹并进入此文件夹!"
sleep 2
mkdir -p /home/MC
cd /home/MC
echo " 现在开始下载MC官方bds开服包，当前版本1.20.81.01 "
sleep 2
wget https://minecraft.azureedge.net/bin-linux/bedrock-server-1.20.81.01.zip
echo " 下载MC官方bds开服包完成！现在开始解压文件 "
sleep 2
unzip -d /home/MC/bds bedrock-server-1.20.81.01.zip
echo "bds开服包已经解压完成！现在开始开服！！！如果看到Server started就说明服开好了！ "
sleep 2
cd /home/MC/bds
chmod +x bedrock_server
./bedrock_server
