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
