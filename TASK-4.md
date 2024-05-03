**#Installation of spike**      
```
$ riscv64-unknown-elf-gcc -Ofast -mabi=lp64 -march=rv64i -o sum1ton.o sum1ton.c    
$gcc sum1ton.c  
$./a.out  
$ riscv64-unknown-elf-gcc -Ofast -mabi=lp64 -march=rv64i -o sum1ton.o sum1ton.c
```    
  
_--to install spike_  		
```
$ git clone https://github.com/riscv/riscv-isa-sim.git      
$ cd riscv-isa-sim    
$ mkdir build  
$ cd build  
$ ../configure --prefix=/opt/riscv
$ sudo apt-get install device-tree-compiler
$ make  
$ sudo apt update  
$ sudo apt install g++-8  
$ make CXX=g++-8  
$ sudo make install  
$ echo 'export PATH=$PATH:/opt/riscv/bin' >> ~/.bashrc  
$ source ~/.bashrc   `	
```


<img width="1119" alt="f1" src="https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/808774a0-2b93-4d62-9771-98d2981a6093">       





<img width="1120" alt="f2" src="https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/723711d2-3920-4c76-9e40-f7f07d06a42a">      





<img width="1120" alt="f3" src="https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/eb6f28cb-0089-40d1-b428-9efdae4c6dec">          





            




_--to install pk(proxy kernal)_  
```
$ cd  
$ git clone https://github.com/riscv/riscv-pk.git    
$ cd riscv-pk    
$ mkdir build    
$ cd build      
$ ../configure --prefix=/home/vsduser/riscv --host=riscv64-unknown-elf --with-arch=rv64gc    
$ make    
$ sudo make install
```      
<img width="1118" alt="pk1" src="https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/c6359e92-9ead-4a29-a4fb-e33c5f673647">   


<img width="1120" alt="pk2" src="https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/efd084f0-d4fc-4fb3-867b-50df58dfc04b">            




                
**#METHOD-2**  
I have downloaded to VDI file which has spike,pk and riscv installaton and followed the Task-3.        

_--compiling the .C using GCC Compiler_
```
$ riscv64-unknown-elf-gcc -Ofast -mabi=lp64 -march=rv64i -o sum1ton.o sum1ton.c
$ gcc sum1ton.c
$ ./a.out   
```


_--compiling the .C using riscv Compiler_    
```
$ riscv64-unknown-elf-gcc -Ofast -mabi=lp64 -march=rv64i -o sum1ton.o sum1ton.c
$ spike pk sum1ton.o
$ spike -d pk sum1ton.o
```



                                                               















