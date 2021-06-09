#!/bin/sh
LANG=en_US.UTF-8
	echo -e	"\033[32m 一键开MC的基岩版服务器Linux脚本正在运行！ \033[0m"
	sleep 1s
	echo -e	"\033[31m 此脚本由火神80制作！我的B站主页链接：https://space.bilibili.com/382814205/\本脚本在GitHub上开源：https://github.com/huoshen80/deploy  \033[0m"
	sleep 1s
	echo -e	"\033[36m 请先确认你是否拥有root权限！如果没有请先输入su do root，再输入root密码，再打开本脚本! \033[0m"
	sleep 1s
    echo -e	"\033[36m 请先确认你的服务器是不是Ubuntu18.04或以上版本，再打开本脚本!本脚本不适合Ubuntu18.04以下或者centos系统等 \033[0m"
	sleep 1s
	echo -e	"\033[32m 你是否要继续进行? \033[0m"
	sleep 1s
	
	if [ $(whoami) != "root" ];then
	echo "请使用root权限执行本脚本!!！"
	exit 1;
	fi
	
	read -r -p "请输入y（确认）/n（取消）[Y/n] " input

	case $input in
		[yY][eE][sS]|[yY])
			echo "Yes"
			;;

		[nN][oO]|[nN])
			echo "No"
			exit 1
			;;

		*)
			echo "请输入y（确认）/n（取消）"
			exit 1
			;;
	esac

    echo -e	"\033[31m 现在开始更新软件源,这可能会需要一点儿时间！\033[0m"
	sleep 2s
	apt-get update -y;
	apt-get upgrade -y;

    echo -e	"\033[31m 软件源更新完成，现在开始安装screen，如果安装失败请自行更换软件源，可以更换为阿里源! \033[0m"
	sleep 2s
    apt-get install screen -y;

    echo -e	"\033[31m screen已安装完成，现在开始创建screen并在/home文件夹内新建MC文件夹并进入此文件夹! \033[0m"
	sleep 2s

    mkdir -p /home/MC; 
	cd /home/MC;
	screen -S mc;

    echo -e	"\033[31m 创建screen并在/home文件夹内新建MC文件夹并进入此文件夹完成，现在开始下载MC官方bds开服包，当前版本1.16.220.02 \033[0m"
	sleep 2s

    wget https://minecraft.azureedge.net/bin-linux/bedrock-server-1.16.221.01.zip


    echo -e	"\033[31m 下载MC官方bds开服包完成！现在开始解压文件 \033[0m"
	sleep 2s

    unzip -d /home/MC/bds bedrock-server-1.16.221.01.zip；
    
    echo -e	"\033[31m bds开服包已经解压完成！现在开始开服！！！如果看到Server started就说明服开好了！ \033[0m"
	sleep 2s

    cd /home/MC/bds;
    chmod +x bedrock-server;
    ./bedrock-server;

