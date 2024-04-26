
**RISC-V Instruction Format**  
RISC-V is a modern, open-source RISC (Reduced Instruction Set Computing) instruction set architecture (ISA) that is designed to be simple, extensible, and suitable for a wide range of applications. The RISC-V ISA defines 6 standard instruction formats, these formats are:  
**1.R-type  
2.	I-type  
3.	S-type  
4.	B-type   
5.	U-type  
6.	J-type**  

<img width="707" alt="1 " src="https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/66243587-505c-4fde-ada5-5c1d99089f9c">  





Few immediate observations we can make about these core formats:  
1.By convention, RISC-V instructions are each 1 word = 4 bytes = 32 bits i.e. fixed-length encoding  
2.They all reserve the first 7 bits ([6:0]) for the opcode.  
3.Register-based operations.    

**1.R-type (Register type):**  
1.It is Used for arithmetic, logic, and shift operations.  
2.The length of a binary instruction is 32bit. 
3. This Instructions uses 3 registers.    


**R-Format:**    
![image](https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/a25b2db8-eb1a-4bb8-8b1c-bd6fd8980612)    


**opcode**: The 7 bits from 0 to 6 are opcode (operation code), used to identify the type of instruction.  
**rd register (destination register) :** Bits 7 to 11 are the index of the rd register. The Rd register is also called the destination register, and the destination register is the register used to store the result.   
**rs1 and rs2 (source registers) :** rs1 and rs2 are called source registers instructions need to read the values of the two source registers for operations. The index of rs1 is in bits 15-19, and the index of rs2 is in bits 20-24.  
**funct7 and funct3 :** combined with opcode, these two field describe what operation to perform. The index of func3 is in bits 12-14, and the index of func7 is in bits 25-31.    

![4](https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/f8f22e76-e2ee-4ace-9f88-27e0fe663d09)  







    
