**TASK-3 COMPILING C PROGRAMME USING RISCV COMPILER**  
**--installation of leafpad**  
$cd    
$leafpad sum1ton.c &   
$sudo apt install leafpad     
**--compilation and execution of C programme**    
$gcc sum1ton.c    
$ls -ltr  
$./a.out       
<img width="638" alt="m1" src="https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/c689dd8a-4036-40d8-a04b-b3675f5f80e5">  

<img width="871" alt="m2" src="https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/6c4caab8-96d5-44dd-9038-5e826cfe94c8">           
          
**--Compilation of programme in riscv gcc compiler**  
$cat sum1ton.c    
<img width="639" alt="m3" src="https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/40b8cc12-eb50-4df3-a0d1-1d667b6a16d5">     



$riscv64-unknown-elf-gcc -O1 -mabi=lp64 -march=rv64i -o sum1ton.o sum1ton.c    
$ls -ltr sum1ton.o     

  
<img width="638" alt="image" src="https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/8d810619-6da7-42c9-abfb-d900913183f1">   
   



**--Assembly code C programme**  
$riscv64-unknown-elf-objdump -d sum1ton.o  
$riscv64-unknown-elf-objdump -d sum1ton.o | less  
/main  
<img width="644" alt="m6" src="https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/400eed94-7b17-4bdf-949c-b0b2d4ad675e">      

The address of the main section is 10184 and its byte addressing. Every next instruction address can be found by adding 4 bytes to the current address.      

**--calculation of Number of instrustions**    

*Number of instrustions = (memory addresses of the start of the next instruction block - memory addresses of the start of the current 
                           instruction block)/4* 
                        =(101b0 -10184)/4   
                        =(B)/4
                        =(11)  
So, in total 11 instructions are present in main() function.  

$riscv64-unknown-elf-gcc -Ofast -mabi=lp64 -march=rv64i -o sum1ton.o sum1ton.c   
$riscv64-unknown-elf-objdump -d sum1ton.o | less  
/main      
<img width="641" alt="image" src="https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/829e09f7-de8b-4b9c-9c01-6f565f3fb290">
    

<img width="650" alt="fast" src="https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/6956c0b1-017a-4eb7-9fba-d28110aa10f4">     



   
**--calculation of Number of instrustions**     
  
*Number of instrustions = (memory addresses of the start of the next instruction block - memory addresses of the start of the current 
                           instruction block)/4*       
                        =(100dc -100b0)/4           
                        =(2C)/4      
                        =(11)         
So, in total 11 instructions are present in main() function.         




**--CONCLUSION**  
_"While the number of instructions hasn't changed, the program's size has decreased. This change is noticeable in the byte address of the main() function, which previously started with 101b0 but now starts with 100dc."_























      


