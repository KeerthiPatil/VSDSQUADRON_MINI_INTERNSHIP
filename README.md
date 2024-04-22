# VSDSQUADRON_MINI_INTERNSHIP
TASK 1  

Download Oracle Virtual machine and allocated 8GB RAM,100GB HDD   
Installation of Ubuntu 22.04 using Virtual Machine  
Installation of RISC-V GNU Toolchain  
Installation of Yosys  
Installation of iverilog  
Installation of gtkwave    

Installation of Ubuntu 22.04 using Virtual Machine

<img width="1120" alt="1 main" src="https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/7b4f8c57-2441-4bb9-a018-a6742ed2f1f2">  



Installation of RISC-V GNU Toolchain    
$ sudo apt-get install autoconf automake autotools-dev curl python3 python3-pip libmpc-dev libmpfr-dev libgmp-dev gawk build-essential bison flex texinfo gperf libtool patchutils bc zlib1g-dev libexpat-dev ninja-build git cmake libglib2.0-dev libslirp-dev  
$ git clone https://github.com/riscv/riscv-gnu-toolchain  
./configure --prefix=/opt/riscv
make linux  
<img width="640" alt="RISC-V GNU Compiler Toolchain" src="https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/7e6d2933-1ecc-408a-8bcf-57380067b6f6">  

Installation of Yosys   
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
<img width="641" alt="yosys" src="https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/8d16b628-0161-430e-b0fa-e3cd4be44ad2">  



