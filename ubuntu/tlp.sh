#!/bin/bash
sudo add-apt-repository -f ppa:linrunner/tlp
sudo apt-get update
sudo apt-get -y install tlp tlp-rdw
sudo tlp start
