sudo podman rm $(sudo podman ps -a -q)

sudo podman rmi pacur/archlinux
sudo podman rmi pacur/amazonlinux-2016.09
sudo podman rmi pacur/amazonlinux-2017.03
sudo podman rmi pacur/amazonlinux-2017.09
sudo podman rmi pacur/amazonlinux-2017.12
sudo podman rmi pacur/amazonlinux-1
sudo podman rmi pacur/amazonlinux-2
sudo podman rmi pacur/centos-6
sudo podman rmi pacur/centos-7
sudo podman rmi pacur/centos-8
sudo podman rmi pacur/debian-jessie
sudo podman rmi pacur/debian-stretch
sudo podman rmi pacur/debian-wheezy
sudo podman rmi pacur/debian-buster
sudo podman rmi pacur/fedora-21
sudo podman rmi pacur/fedora-22
sudo podman rmi pacur/fedora-23
sudo podman rmi pacur/fedora-24
sudo podman rmi pacur/fedora-25
sudo podman rmi pacur/fedora-26
sudo podman rmi pacur/fedora-27
sudo podman rmi pacur/fedora-28
sudo podman rmi pacur/fedora-29
sudo podman rmi pacur/fedora-30
sudo podman rmi pacur/fedora-31
sudo podman rmi pacur/fedora-32
sudo podman rmi pacur/genkey
sudo podman rmi pacur/oraclelinux-7
sudo podman rmi pacur/oraclelinux-8
sudo podman rmi pacur/ubuntu-precise
sudo podman rmi pacur/ubuntu-trusty
sudo podman rmi pacur/ubuntu-vivid
sudo podman rmi pacur/ubuntu-wily
sudo podman rmi pacur/ubuntu-xenial
sudo podman rmi pacur/ubuntu-yakkety
sudo podman rmi pacur/ubuntu-zesty
sudo podman rmi pacur/ubuntu-artful
sudo podman rmi pacur/ubuntu-bionic
sudo podman rmi pacur/ubuntu-cosmic
sudo podman rmi pacur/ubuntu-disco
sudo podman rmi pacur/ubuntu-eoan
sudo podman rmi pacur/ubuntu-focal
sudo podman rmi pacur/ubuntu-groovy
sudo podman rmi base/archlinux
sudo podman rmi archlinux/base
sudo podman rmi amazonlinux:2016.09
sudo podman rmi amazonlinux:2017.03
sudo podman rmi amazonlinux:2017.09
sudo podman rmi amazonlinux:2017.12
sudo podman rmi amazonlinux:1
sudo podman rmi amazonlinux:2
sudo podman rmi centos:6
sudo podman rmi centos:7
sudo podman rmi centos:8
sudo podman rmi debian:jessie
sudo podman rmi debian:stretch
sudo podman rmi debian:wheezy
sudo podman rmi debian:buster
sudo podman rmi fedora:21
sudo podman rmi fedora:22
sudo podman rmi fedora:23
sudo podman rmi fedora:24
sudo podman rmi fedora:25
sudo podman rmi fedora:26
sudo podman rmi fedora:27
sudo podman rmi fedora:28
sudo podman rmi fedora:29
sudo podman rmi fedora:30
sudo podman rmi fedora:31
sudo podman rmi fedora:32
sudo podman rmi oraclelinux:7
sudo podman rmi oraclelinux:8
sudo podman rmi ubuntu:precise
sudo podman rmi ubuntu:trusty
sudo podman rmi ubuntu:vivid
sudo podman rmi ubuntu:wily
sudo podman rmi ubuntu:xenial
sudo podman rmi ubuntu:yakkety
sudo podman rmi ubuntu:zesty
sudo podman rmi ubuntu:artful
sudo podman rmi ubuntu:bionic
sudo podman rmi ubuntu:cosmic
sudo podman rmi ubuntu:disco
sudo podman rmi ubuntu:eoan
sudo podman rmi ubuntu:focal
sudo podman rmi ubuntu:groovy

sudo podman rmi $(sudo podman images -q -f dangling=true)
