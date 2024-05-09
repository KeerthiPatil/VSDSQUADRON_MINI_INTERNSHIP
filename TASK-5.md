# TASK-5: Conducting a Functional Simulation Experiment with RISC-V Core : `Verilog Netlist` and `Testbench`, and Observing Waveform  

> * To perform functional simulation of RISC-V on Ubuntu running in a virtual machine, we need to ensure that Verilog and GTKWave are installed, which is already performed in  <a href="https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/blob/521f141724596c3a0b9e766b10dd59874f90fe80/TASK-1.md">Task-1</a>
---------------------------------------------------------------------------------------------------------------------------------------------------------------  
# Execution of RISC-V Functional Simulation:    
1. Creating a new directory :
```
$ cd Desktop
$ mkdir keerthi
$ cd keerthi
``` 
2. Copying the design code and testbench code from the provided GitHub repository to my code hosting platform, named `ins_RV32EC.v` for the design code and `ins_RV32EC_tb.v` for the testbench code, will help me set up the RISC-V processor simulation. 
```
$ git clone https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP.git
$ cd VSDSQUADRON_MINI_INTERNSHIP
```  

3. To Run and Simulate Verilog Code:
```
$ iverilog -o VSDSQUADRON_MINI_INTERNSHIP ins_RV32EC.v ins_RV32EC_tb.v
$ vvp VSDSQUADRON_MINI_INTERNSHIP
```
4. To View Simulation Waveform in GTKWave:
```
$ gtkwave ins_RV32EC.vcd
```
<br>
<img width="1119" alt="image" src="https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/bad745a2-2848-4f9f-b3ba-d4f3f9a72def">  
<br>     
<br>
<img width="1120" alt="a" src="https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/a8b4149c-7a5b-46a4-ba43-3b2dd7a75aed">
<br>
<br>
<img width="1118" alt="c" src="https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/d3558f70-2414-4fe6-b6dd-5ffc069faeba">
<br>  
<br>  
<img width="1112" alt="d" src="https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/9db55ee2-f493-4171-b8d0-4247bd7835fb">
<br>      
<br>  
<img width="1120" alt="e" src="https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/b1207569-e76f-4c02-b70f-f32d3c627642">
<br>  
<hr>     

# OUTPUT WAVEFORM: 

<br> 
<img width="572" alt="image" src="https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/e490c794-5d88-4898-b719-c4df8c762827">
<br> 
<hr>  

# Instruction 1: ADD R6, R1, R2    

<br> 
<img width="1119" alt="image" src="https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/63a67e70-a3fb-4ca9-b09b-f2c0308e4a9b">
<br>   
<img width="1119" alt="image" src="https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/0c344941-51b8-403c-8d17-d9868918257d">
<br> 
<hr>   

#  Instruction 2: SUB R7, R1, R2  
<br> 
<img width="1119" alt="image" src="https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/2f4dd9a2-3b85-4e96-a556-4e25412c678f">
<br>   
<hr>    

# Instruction 3: AND R8, R1, R3  
<br>   
<img width="1119" alt="image" src="https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/65c67fd1-b373-41c7-8589-12a1a8bc664f">
<br> 
<hr>      

# Instruction 4: OR R9, R2, R5
<br>
<img width="1005" alt="image" src="https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/436e86c0-fd4d-4664-8802-da78687e0ccd">
<br> 
<hr>   

# Instruction 5: XOR R10, R1, R4  
<br>  
<img width="964" alt="image" src="https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/d0b3b607-0e63-44fb-b702-148dc2b605ea">
<br> 
<hr>   

# Instruction 6: SLT R11, R2, R4   
<br> 
<img width="1190" alt="image" src="https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/5b65da53-9827-43e5-aca4-d2a8c8bb50be">
<br> 
<hr>     

# Instruction 7: ADDI R12, R4, 5
<br>   
<img width="1190" alt="image" src="https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/9b8b9841-014d-4e75-9d2b-f7eec6a115f4">
<br> 
<hr>   

# Instruction 8: SW R3, R1, 2   
<br>  
<img width="1090" alt="image" src="https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/3d89b4b3-89c1-4b75-8231-f3afc6a69a08">
<br> 
<hr>   

# Instruction 9: LW R13, R1, 2  
<br>   
<img width="1087" alt="image" src="https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/a80543c0-32f6-43f0-9e12-2514be918a30">
<br> 
<hr>   

# Instruction 10: BEQ R0, R0, 15   
## After branching ,performing  `Instruction 11: ADD R14, R2, R2`  
<br>   
<img width="1090" alt="image" src="https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/dc8c1ab9-71ad-450b-bc13-b23c298bff15">
<br> 
<hr>   

# Full 5-stage Instruction pipeline
<br>   
<img width="1082" alt="image" src="https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/19db65a9-9089-4342-bdf1-2da0d8ff2228">
<br> 
<hr>   
