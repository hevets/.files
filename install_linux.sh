#!/bin/bash
 
# with downloads from the internet
# install sublime text 3
# install google chrome
# install intel hd 4600 drivers https://01.org/linuxgraphics/downloads
# linux mint edit file /etc/lsb-release replace with following 
# DISTRIB_ID=Ubuntu
# DISTRIB_RELEASE=14.04
# DISTRIB_CODENAME=trusty
# DISTRIB_DESCRIPTION="Ubuntu 14.04 LTS"
# install intel-linux-graphic-stuff
# reboot computer 
 
# common
sudo apt-get update
sudo apt-get -f install git gcc make build-essential vim
 
# add ppa's
sudo add-apt-repository ppa:linrunner/tlp
sudo add-apt-repository ppa:webupd8team/java
sudo add-apt-repository ppa:ed10vi86/video
sudo add-apt-repository ppa:chris-lea/node.js
 
# update package manager
sudo apt-get update
 
# tlp laptop mode
sudo apt-get -f install tlp tlp-rdw tp-smapi-dkms acpi-call-tools
sudo tlp start
 
# oracle java
# switch between java versions
# sudo update-java-alternatives -s java-7-oracle
# sudo update-java-alternatives -s java-8-oracle
sudo apt-get install oracle-java7-installer oracle-java8-installer maven
 
# vlc
sudo apt-get install -f vlc
 
# nodejs
sudo apt-get install -f nodejs npm
sudo ln -s /usr/bin/nodejs /usr/bin/node
  
# Android Setup Linux
#Setting up android is pretty easy getting the haxm is a little more difficult
#Follow the guide here
# - https://software.intel.com/en-us/blogs/2012/03/12/how-to-start-intel-hardware-assisted-virtualization-hypervisor-on-linux-to-speed-up-intel-android-x86-gingerbread-emulator
#If you have issues creating a sym link seemed to help me...
#http://xmodulo.com/2013/03/how-to-run-android-emulator-on-ubuntu-or-debian.html
#ensure you have KVM accel turned on in your bios
# - http://askubuntu.com/questions/140360/kvm-kernel-module-error
#In android studio add the following to your Run configuration
# -qemu -m 2048 -enable-kvm  
