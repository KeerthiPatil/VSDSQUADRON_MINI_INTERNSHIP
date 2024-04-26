
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

-The above image gives the overview of R-Type along with its bits in corresponding fields.   
-The opcode for R-Type is "0110011" ( this helps for deciding wheather the instruction is of R-Type or not).     
-funct3 for ADD/SUB is "000" while the funct7 differentiates the ADD/SUB by 30th Bit ( 30th Bit of SUB is 1 resembling that subtraction operation to be performed)     
-SRL/SRA is differentiated by 30th bit in funct7 (30th bit of SRA is 1 resembling that Shift Right Arithmetic)  
-Each instruction in the RISC-V R-Type format has a unique binary code that defines its specific operation. These codes are different for each instruction, allowing the processor to differentiate between them and execute the correct operation.  


![Screenshot 2024-04-26 123346](https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/e3c4bfd3-0a2c-488b-aec3-3cc3e88631d3)    

-The above image shows the various R-Type instructions and their descriptions.  
-The instructions are ADD,SUB,XOR,BITWISE OR,BITWISE AND,SLA(shift left logic),SRL(shift right logic),SRA(shift right arithematic)(append sign Bit),slt(set lessthan),sltu(set lessthan unsigned)  
-Basically,the result of the corresponding instruction is stored in "rd". For example, to perform addition between r2 and r3. First , addition operation is performed in (rs1 and rs2 (source registers)) and then result is stored in rd.     


  
**2.I-type (immediate type):**   
1.instructions with immediates, loads.  
2.The I-Type format is used for various instructions in RISC-V that involve loading values from memory, branching based on immediate values, and performing arithmetic and logical operations with immediate values.   

**I-Format:**    
![image](https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/5c9f97c3-ff7a-4450-acf4-79db16accde4)   

**opcode:** uniquely specifies the instruction   
**rs1:** specifies a register operand  
**rd:** specifies destination register that receives result of computation    
**Only **imm field** is different from R-format rs2 and funct7 replaced by
 12-bit signed immediate, imm[11:0] and other parts are very similar to R-type.**
**immediate (12)**: 12 bit number  
– All computations done in words, so 12-bit immediate must be extended to 32 bits  
– always sign-extended to 32-bits before use in an arithmetic operation  
Can represent 2^12 different immediates  
– imm[11:0] can hold values in range [-2^11 , +2^11]    
operation is performed by rs1 and constant defined in immediate register.   
![Screenshot 2024-04-26 134500](https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/12d6676d-102b-400b-8f09-e92657144bf7)  

-funct3 3-bits with differnt values defining different operations.    
-The opcode for I-Type is "0010011".  
-rd and rs1 5-bits.    

![Screenshot 2024-04-26 134525](https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/77f143d6-3197-40d7-aa92-7e376e641bcc)  

I-Type is used for shift operations such as SLLI(Shift Left Logical Immediate), SRLI(Shift Right Logical Immediate),SRAI(Shift right arithmetic Immediate).      
Here, one of the higher-order immediate bits is used to distinguish "shift right logical" (SRLI) from "shift right arithmetic: (SRAI).  
**shamt:**"shift-by-immediate" instructions only use lower 5 bits of the immediate value for shift amount (can only shift by 0-31 positions).    

![Screenshot 2024-04-26 134546](https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/bd1c6787-d922-46f3-963a-da4d68f47b0c)     
-The above image shows the various I-Type instructions and their descriptions.    
-The instructions of I-type are ADDI,SLTI,SLTIU,XORI,ORI,ANDI for shift operations the shift value is stored in "shamt[4:0]" which is of 5bit of immediate value.   

**3.S-type (Store type):**    
1.store instructions  
2.In the S-Type instruction format of RISC-V, there is no destination register (rd) as seen in other instruction formats. Instead, the immediate value is split into two parts. The first part, represented by bits 11 to 5, is used as an offset from the base address specified by register rs1. The second part, represented by bits 4 to 0, is used in place of the rd field found in other instruction formats.  
Additionally, in the S-Type format, bits 5 to 11 of the immediate value are used in place of the funct7 field found in other instruction formats. These bits help specify the exact operation or variant of the instruction, similar to how funct7 is used in other formats.    
![image](https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/1b9e2ee9-5fd5-4cd1-8378-4722cfb2d507)







































    
