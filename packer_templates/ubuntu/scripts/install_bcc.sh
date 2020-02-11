#!/bin/bash
# 安装参考 https://github.com/iovisor/bcc/blob/master/INSTALL.md#packages
set -eux

sudo apt-get update
sudo apt-get install -y bpftrace bpfcc-tools linux-headers-$(uname -r)
