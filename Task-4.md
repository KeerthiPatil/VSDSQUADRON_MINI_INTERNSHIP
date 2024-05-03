**Installation of spike**    

$ riscv64-unknown-elf-gcc -Ofast -mabi=lp64 -march=rv64i -o sum1ton.o sum1ton.c    
$gcc sum1ton.c  
$./a.out  
$ riscv64-unknown-elf-gcc -Ofast -mabi=lp64 -march=rv64i -o sum1ton.o sum1ton.c       
  
*--to install spike*   
$ git clone https://github.com/riscv/riscv-isa-sim.git      
$ cd riscv-isa-sim    
$ mkdir build  
$ cd build  
$ ../configure --prefix=/opt/riscv  
$ make  
$ sudo apt update  
$ sudo apt install g++-8  
$ make CXX=g++-8  
$ sudo make install  
$ echo 'export PATH=$PATH:/opt/riscv/bin' >> ~/.bashrc  
$ source ~/.bashrc    

<img width="1119" alt="f1" src="https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/808774a0-2b93-4d62-9771-98d2981a6093">   



<img width="1120" alt="f2" src="https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/723711d2-3920-4c76-9e40-f7f07d06a42a">  



<img width="1120" alt="f3" src="https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/eb6f28cb-0089-40d1-b428-9efdae4c6dec">  

















