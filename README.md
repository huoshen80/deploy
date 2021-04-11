# deploy
这个是一键部署MC的Java服务器的仓库

## 准备安装
此一键部署支持centos和Ubuntu/Debian三个Linux系的服务器（可使用Windows server2019及更高版本来开启Windows中的Linux子系统功能然后去往应用商店下载对应Linux系的运行程序）
其中，您需要将相对应您的服务器类型的sh文件（执行文件，类似于Windows中的bat文件）下载到服务器中的您想安装的文件夹中（建议直接下载到root文件夹中，因为接下来是以root文件夹为基础来进行安装）


## 开始安装
请注意您已经将sh文件直接wget（不设置任何参数直接wget下载）如果是放在不是root的文件夹，请执行'''cd /文件夹路径 '''命令

#### 安装命令
Ubuntu/Debian
'''bash
deploy(java) Ubuntu or Debian.sh
'''
centos
'''bash
sudo deploy(java)centos.sh
'''
请注意，在运行sh文件的时候可能需要管理员（root）权限，其中centos代码中已经添加了获取root指令sudo，Ubuntu和Debian的获得root指令请参照相关文档
