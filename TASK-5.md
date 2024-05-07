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

