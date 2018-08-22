#!/usr/bin/env python
# coding=utf-8
from mininet.net import Mininet
from mininet.node import RemoteController
from mininet.node import Host
from mininet.node import OVSSwitch
from mininet.cli import CLI
from mininet.log import setLogLevel, info
#from mininet.link import TCLink, Intf
#from subprocess import call

def myNetwork():
    #创建一个mininet网络,其中build表示是否立即从topo构建网络，默认为True
    #ipBase表示设置网络的ip地址段
    net = Mininet(topo=None, build=False, ipBase='10.0.0.0/8')
    #显示通知
    info('*****Adding Controller*****\n')
    #设定远程控制器的信息，使用TCP模式连接
    c0 = net.addController(name='c0',controller=RemoteController, ip='192.168.88.128', port=6653, protocol='tcp')

    #添加交换机
    info('*****Adding Switches*****\n')
    s1 = net.addSwitch('s1', cls=OVSSwitch, dpid='1')
    s2 = net.addSwitch('s2', cls=OVSSwitch, dpid='2')
    s3 = net.addSwitch('s3', cls=OVSSwitch, dpid='3')

    #添加主机
    info('*****Adding Hosts*****\n')
    h1 = net.addHost('h1', cls=Host, ip='10.0.0.1', mac="00:00:00:00:00:01", defaultRoute=None)
    h2 = net.addHost('h2', cls=Host, ip='10.0.0.2', mac="00:00:00:00:00:02", defaultRoute=None)
    h3 = net.addHost('h3', cls=Host, ip='10.0.0.3', mac="00:00:00:00:00:03", defaultRoute=None)
    h4 = net.addHost('h4', cls=Host, ip='10.0.0.4', mac="00:00:00:00:00:04", defaultRoute=None)

    #连接拓扑
    info('*****Adding Links*****\n')
    net.addLink(s1, s2, 2, 2)
    net.addLink(s1, s3, 3, 3)
    net.addLink(s2, s3, 3, 4)
    net.addLink(h1, s1, 1, 1)
    net.addLink(h2, s2, 1, 1)
    net.addLink(h3, s3, 1, 1)
    net.addLink(h4, s3, 1, 2)

    #构建网络
    info('*****Starting Network*****\n')
    net.build()
    info('*****Starting Controllers*****\n')
    for controller in net.controllers:
        controller.start()
    
    #开启交换机
    info('*****Starting Switches*****\n')
    net.get('s1').start([c0])
    net.get('s2').start([c0])
    net.get('s3').start([c0])

    CLI(net)
    net.stop()

if __name__ == '__main__':
    setLogLevel('info')
    myNetwork()
