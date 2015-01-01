#!/bin/bash
sudo apt-get purge openjdk
sudo add-apt-repository -f ppa:webupd8team/java
apt-get -y install oracle-java8-installer
