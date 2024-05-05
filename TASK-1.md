# TASK_1:  

1.Download Oracle Virtual machine and allocated 8GB RAM,100GB HDD   
2.Installation of Ubuntu 22.04 using Virtual Machine  
3.Installation of RISC-V GNU Toolchain  
4.Installation of Yosys  
5.Installation of iverilog  
6.Installation of gtkwave    

# 1.Installation of Ubuntu 22.04 using Virtual Machine:

<img width="1120" alt="1 main" src="https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/7b4f8c57-2441-4bb9-a018-a6742ed2f1f2">  





  
# 2.Installation of RISC-V GNU Toolchain:   
```
$ sudo apt-get install autoconf automake autotools-dev curl python3 python3-pip libmpc-dev libmpfr-dev libgmp-dev gawk build-essential bison flex texinfo gperf libtool patchutils bc zlib1g-dev libexpat-dev ninja-build git cmake libglib2.0-dev libslirp-dev  
$ git clone https://github.com/riscv/riscv-gnu-toolchain  
./configure --prefix=/opt/riscv
make linux
```
<img width="640" alt="RISC-V GNU Compiler Toolchain" src="https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/7e6d2933-1ecc-408a-8bcf-57380067b6f6">  

# 3.Installation of Yosys:
```
$ git clone https://github.com/YosysHQ/yosys.git  
$ sudo apt install make   
$ cd yosys  
$ sudo apt-get install build-essential clang bison flex 
    libreadline-dev gawk tcl-dev libffi-dev git
    graphviz xdot pkg-config python3 libboost-system-dev 
    libboost-python-dev libboost-filesystem-dev zlib1g-dev  
$ make config-gcc  
$ make   
$ sudo make install  
Yosys 
```
<img width="641" alt="yosys" src="https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/8d16b628-0161-430e-b0fa-e3cd4be44ad2">  

  
# 4.Installation of iverilog:
```
$ sudo apt-get install iverilog     
```
<img width="640" alt="iverilog installation" src="https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/89c9a9a7-344e-4f25-93f2-2a8f92a52943">  


# 5.Installation of gtkwave:
```
$ sudo apt update  
$ sudo apt install gtkwave      
```
<img width="643" alt="gtkwave installation" src="https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/a719993f-8cc2-4045-a504-12c75c436307">  
<img width="642" alt="gtkwave installation 2" src="https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/e0e56dc6-0dc5-439a-9e68-001bbd9ee77a">


  


