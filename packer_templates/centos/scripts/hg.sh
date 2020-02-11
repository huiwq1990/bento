
# 安装build
# https://unix.stackexchange.com/questions/1338/what-is-the-fedora-equivalent-of-the-debian-build-essential-package
yum install -y gcc g++ kernel-devel tcpdump httpd jq
yum install -y net-tools.x86_64
yum install -y git wget curl dos2unix lrzsz ipvsadm
yum install -y gcc make gcc-c++ kernel-devel-`uname -r` zlib-devel openssl-devel readline-devel sqlite-devel perl wget dkms nfs-utils bzip2

exit 0
# 支持docker
#yum install -y docker

# java环境
#yum install -y maven java-1.8.0-openjdk java-1.8.0-openjdk-devel

# go环境
goZipFile=go1.12.12.linux-amd64.tar.gz
if [ ! -f "$goZipFile" ]; then
  wget https://gomirrors.org/dl/go/${goZipFile}
fi
tar zxvf ${goZipFile} -C /usr/local/

mkdir -p /opt/workspace/go/

echo $' \n
export GOPROXY=https://goproxy.cn\n
export GOROOT=/usr/local/go\n
export GOPATH=/opt/workspace/go/\n
export GOBIN=$GOPATH/bin/\n
export PATH=$GOROOT/bin:$GOBIN:$GOPATH/bin:$PATH\n
' >> ~/.bashrc

#构建命令
