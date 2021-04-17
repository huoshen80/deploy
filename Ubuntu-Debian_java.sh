#!/bin/bash
LANG=en_US.UTF-8
	echo -e	"\033[32m 一键部署MC的Java服务器Linux脚本正在运行！ \033[0m"
	sleep 1s
	echo -e	"\033[31m 此脚本由火神80制作！我的B站主页链接：https://space.bilibili.com/382814205/\本脚本在GitHub上开源：https://github.com/huoshen80/deploy  \033[0m"
	sleep 1s
	echo -e	"\033[36m 请先确认你是否拥有root权限！如果没有请先输入su do root，再输入root密码，再打开本脚本! \033[0m"
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
	sleep 3s
	apt-get update -y;
	apt-get upgrade -y;

	echo -e	"\033[31m 软件源更新完成，现在开始安装screen和java，如果安装失败请自行更换软件源，可以更换为阿里源! \033[0m"
	sleep 3s
	apt-get install screen -y;
	apt-get install openjdk-8-jdk -y;
	

	echo -e	"\033[31m screen和Java已安装完成，现在开始创建screen并在/home文件夹内新建MC文件夹并进入此文件夹! \033[0m"
	sleep 3s
	
	screnn -R mc;
	mkdir -p /home/MC; 
	cd /home/MC;

	echo -e	"\033[31m 部署任务已全部完成！现在快去把开服包放进这个目录，然后运行！！！ \033[0m"
