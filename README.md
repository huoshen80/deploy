# deploy
这个是一键部署MC的Java服务器的仓库.

## 准备部署
此一键部署支持centos和Ubuntu/Debian三个Linux系的服务器（支持centos和Ubuntu/Debian三个Linux发行版本）
其中，您需要使用适应您的服务器类型的sh文件.（执行文件，类似于Windows中的bat文件）
在开始部署之前呢，您得先确定您是否具有root权限！如果没有root权限，请先使用sudo su root然后输入root密码进行获取.

## 开始部署
在ssh终端使用指令：``` git clone https://github.com.cnpmjs.org/huoshen80/deploy.git ```
如果没安装git请先使用指令（Ubuntu/Debian）：``` apt install git -y ```
(centos)：``` yum install git -y ```，来先安装.
请执行'''cd /文件夹路径 '''命令

## 部署命令
以上步骤都完成后，就可以进行最后一步！
Ubuntu/Debian 输入指令：``` sh ubuntu-debian_java.sh ```
centos 输入指令：``` sh centos_java.sh ```
然后就完成部署了！！！
接下来就是开MC服务器了！

## 开服
在这个仓库里的Server文件夹存在许多客户端你可以使用``` yum install wget -y ```然后``` wget 链接 ```下载使用客户端
使用``` java -jar 文件名.jar ```开服
