**Spike and pk (proxy kernel)** are components of the RISC-V ISA (Instruction Set Architecture) ecosystem. 			

> * **1.Spike:** _Spike is a RISC-V ISA simulator. It emulates a RISC-V processor and allows to run RISC-V programs on computer without needing actual RISC-V hardware._				

> * **2.Proxy Kernel (pk):** _Proxy Kernel is a small software layer that provides an interface between the RISC-V hardware and a RISC-V operating system. It is used when running an operating system on Spike. pk initializes the system, sets up memory, handles system calls, and provides other essential functionalities required by the operating system._


 
**#METHOD-1** 		
		
**# Installation of spike**      
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

> * Method 1 explains Manual Installation.     		
> * Method 2 is Pre-installed VDI.  			
> * Method 1 discusses installing Spike and pk, while Method 2 provides a VirtualBox disk image (VDI) with Spike and pk already installed.		
-------------------------------------------------------------------------------------------------------------------------------------------------------------
_--compiling the .C using GCC Compiler_
```
$ riscv64-unknown-elf-gcc -Ofast -mabi=lp64 -march=rv64i -o sum1ton.o sum1ton.c
$ gcc sum1ton.c
$ ./a.out   
```


_--compiling the .C using riscv Compiler_ **(using  Ofast)**
```
$ riscv64-unknown-elf-gcc -Ofast -mabi=lp64 -march=rv64i -o sum1ton.o sum1ton.c
$ spike pk sum1ton.o
$ spike -d pk sum1ton.o
```


<img width="1120" alt="e1" src="https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/3fdd0457-6f45-4a1c-a314-ae1fa6276a38">									



		




		
```
$ riscv64-unknown-elf-objdump -d sum1ton.o | less
```			
<img width="1120" alt="e2" src="https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/0226155c-d59b-4831-9a77-694ad92404f8">				


_--Debugging the Assembly Language Program from sum1ton.c and Analyzing each Register Instruction_		

```
$ spike -d pk sum1ton.o
```
		
<img width="1120" alt="e4" src="https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/d303da8e-cc95-4f36-bd8b-1734286afac5">		


<img width="1120" alt="e6" src="https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/8831b983-f296-4b24-aeeb-25aa54bc37ab">						


<img width="1120" alt="e7" src="https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/73bba687-2fb4-469f-b1e4-b463ac39b7ae">				

                                                                               											
 **#Analyzing each instruction:**	  		
 ```
00000000000100b0 <main>:
   100b0:       00021537                lui     a0,0x21
   100b4:       ff010113                addi    sp,sp,-16
   100b8:       00f00613                li      a2,15
   100bc:       00500593                li      a1,5
   100c0:       18050513                addi    a0,a0,384 # 21180 <__clzdi2+0x48>
   100c4:       00113423                sd      ra,8(sp)
   100c8:       340000ef                jal     ra,10408 <printf>
   100cc:       00813083                ld      ra,8(sp)
   100d0:       00000513                li      a0,0
   100d4:       01010113                addi    sp,sp,16
   100d8:       00008067                ret
```
**#FIRST INSTRUCTION:** 
> * The address_of_first_main()_instruction is 100b0 to execute this 
```
(spike) until pc 0 101b0
```
> * To determine the value stored in the **"a0"** register before the execution of the first instruction, the following command is used.
```
(spike) reg 0 a0
``` 
> * Press enter to run the first instruction.  
> * The value of register **"a0"** is **"0x0000000000000001"**, indicating that each position in the 64-bit RISC-V object file contains a 4-bit data, confirming the program's compilation into a 64-bit format.    
> * After executing the first instruction, we can verify the content of register **"a0"** by using the command reg 0 a0.  
> * The content of register **"a0"** has been updated due to the **lui a0,0x21** instruction. which loads the upper immediate value 0x21 into the upper bits of register **"a0"**.The 0x prefix signifies that 21 is a hexadecimal value.  
																			
**#SECOND INSTRUCTION:**    
> * The next instruction has sp (stack pointer).  
> * Before executing the second instruction, we will check the value of the stack pointer (sp).  
```
(spike) reg 0 sp
```
> * The current value stored in the stack pointer **"(sp)"** is **"0x3ffffffb50"**.Press enter to run the second instruction.    
> * The addi sp,sp,-16 instruction in the compressed instruction set (rv64c) performs an addition of the immediate value -16 to the stack pointer (sp), effectively subtracting decimal 16 from the current value of the stack pointer.
> * The value of (16) in decimal is equivalent to (10) in hexadecimal. The stack pointer (sp) value before the execution of addi sp,sp, -16 was 0x3ffffffb50, and subtracting 0x10 from it yields **"0x3ffffffb40"**.
> * To proceed with executing the next instructions, we will repeat the same procedure.







------------------------------------------------------------------------------------------------------------------------------------------------------------
_--compiling the .C using riscv Compiler_ **(using  O1)**
```
$ riscv64-unknown-elf-gcc -O1 -mabi=lp64 -march=rv64i -o sum1ton.o sum1ton.c
$ spike pk sum1ton.o
$ spike -d pk sum1ton.o
```

                                                               















