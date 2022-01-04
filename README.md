# merlin-xray


## 文件介绍
firewall-start //iptables规则

services-start //开机启动

xray-check.sh //程序自检 每15分钟自检

config.json //xray配置文件
### 修改firewall-start和config.json

## 第一步
刷梅林固件 把 firewall-start，services-start ，xray-check.sh 放到/jffs/scripts，并赋予 777权限
## 第二步
新建/jffs/xray目录，填写全config.json， 下载xray二进制(对应芯片的的armv8或 armv7)，geosite.dat,geoip.dat(路由规则)，并赋予 777权限
## 第三步 
重启路由或者 在/jffs/scripts目录执行 sh services-start
