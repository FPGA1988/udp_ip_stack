
# 项目说明
  使用Verilog HDL编写的UDP/IP协议栈.
  
----

# 更新历史

  yyyy-mm-dd Author Detail
  
  
  2016-09-05 离场悲剧-添加readme文件避免空文件夹，将smic18的cell define文件check-in，由于lib和db太大暂时未上传
  
  2016-09-05 离场悲剧-因为smic18的libhedb太大了，所以先把trunk下面的其他文件先commit到git
  
  2016-09-05 离场悲剧-添加项目readme说明以及相关的ip引用、授权等信息
  

  
  
  
----

# 授权信息
  1. 协议栈主体采用的是Apache License 2.0，你可以在https://github.com/FPGA1988/udp_ip_stack/blob/master/LICENSE 查看相关声明. 
  2. 因为目前还没有编写自己的mac层的代码，因此暂时采用http://opencores.org/project,ethernet_tri_mode 的10M/100M/1000M以太网MAC IP核，原IP采用LGPL的license，因此目前不会对其修改，等以后编写了自己的MAC控制代码之后再进行替换。现使用的三速MAC信息如下：
  ```
  
    1.Details
      Author            : Gao, Jon
      Name              : ethernet_tri_mode
      Created           : Nov 25, 2005
      Updated           : Mar 5, 2016
      SVN Updated       : Mar 10, 2009
    2.Other project properties
      Category          : Communication controller
      Language          : Verilog
      Development status: Stable
      Additional info   : Design done, FPGA proven 
      WishBone Compliant: No
      License           : LGPL
      
  ```
  
----
