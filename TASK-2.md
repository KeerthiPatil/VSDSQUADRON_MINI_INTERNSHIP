# TASK-2:
# RISC-V Instruction Format 
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

## 1. R-type (Register type):  
1.It is Used for arithmetic, logic, and shift operations.  
2.The length of a binary instruction is 32bit. 
3. This Instructions uses 3 registers.    


**R-Format:**    
![image](https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/a25b2db8-eb1a-4bb8-8b1c-bd6fd8980612)    


**opcode**: The 7 bits from 0 to 6 are opcode (operation code), used to identify the type of instruction.  
**rd register (destination register) :** Bits 7 to 11 are the index of the rd register. The Rd register is also called the destination register, and the destination register is the register used to store the result.   
**rs1 and rs2 (source registers) :** rs1 and rs2 are called source registers instructions need to read the values of the two source registers for operations. The index of rs1 is in bits 15-19, and the index of rs2 is in bits 20-24.  
**funct7 and funct3 :** combined with opcode, these two field describe what operation to perform. The index of func3 is in bits 12-14, and the index of func7 is in bits 25-31.    

![image](https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/8d839d6e-00dc-4736-b412-914dce3cff82)

-The above image gives the overview of R-Type along with its bits in corresponding fields.   
-The opcode for R-Type is "0110011" ( this helps for deciding wheather the instruction is of R-Type or not).     
-funct3 for ADD/SUB is "000" while the funct7 differentiates the ADD/SUB by 30th Bit ( 30th Bit of SUB is 1 resembling that subtraction operation to be performed)     
-SRL/SRA is differentiated by 30th bit in funct7 (30th bit of SRA is 1 resembling that Shift Right Arithmetic)  
-Each instruction in the RISC-V R-Type format has a unique binary code that defines its specific operation. These codes are different for each instruction, allowing the processor to differentiate between them and execute the correct operation.  
The instructions are ADD,SUB,XOR,BITWISE OR,BITWISE AND,SLA(shift left logic),SRL(shift right logic),SRA(shift right arithematic)(append sign Bit),slt(set lessthan),sltu(set lessthan unsigned)  
Basically,the result of the corresponding instruction is stored in "rd". For example, to perform addition between r2 and r3. First , addition operation is performed in (rs1 and rs2 (source registers)) and then result is stored in rd.     


  
## 2. I-type (immediate type):  
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
![image](https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/8b4cc265-87a8-4150-89f9-b7dcc326408c)  

-funct3 3-bits with differnt values defining different operations.    
-The opcode for I-Type is "0010011".  
-rd and rs1 5-bits.    
I-Type is used for shift operations such as SLLI(Shift Left Logical Immediate), SRLI(Shift Right Logical Immediate),SRAI(Shift right arithmetic Immediate).    
Here, one of the higher-order immediate bits is used to distinguish "shift right logical" (SRLI) from "shift right arithmetic: (SRAI).  
**shamt:**"shift-by-immediate" instructions only use lower 5 bits of the immediate value for shift amount (can only shift by 0-31 positions).     
-The above image shows the various I-Type instructions and their descriptions.    
-The instructions of I-type are ADDI,SLTI,SLTIU,XORI,ORI,ANDI for shift operations the shift value is stored in "shamt[4:0]" which is of 5bit of immediate value.   

## 3. S-type (Store type):    
1.store instructions    

![image](https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/1b9e2ee9-5fd5-4cd1-8378-4722cfb2d507)   
-The opcode for S-type is "0100011".  
-operation defined by funct3.  
-Value is defined by rs2 and address will be calculated from rs1 and immediate value.  
-In the S-Type instruction format of RISC-V, there is no destination register (rd) as seen in other instruction formats. Instead, the immediate value is split into two parts. The first part, represented by bits 11 to 5, is used as an offset from the base address specified by register rs1. The second part, represented by bits 4 to 0, is used in place of the rd field found in other instruction formats.  
-Additionally, in the S-Type format, bits 5 to 11 of the immediate value are used in place of the funct7 field found in other instruction formats. These bits help specify the exact operation or variant of the instruction, similar to how funct7 is used in other formats.    
![image](https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/954f90e4-6348-4c00-9514-38ceb0af57b3)


Load is of I-Type used to read the memory and STORE is of S-Type is used to write the values into memory. Address will be caluclated by rs1 and sign extension of immediate value.    
Address=rs1 + SXT(imm[11:0])  
Load:rd = M[Address]  
Store:M[Address]=rs2    

All instructions are defined by funct3 and opcodes indicates wheather its type LOAD or STORE Instruction.  

## 4. B-type (Branch type):    
Branch instructions      

![image](https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/0bcb8795-d7f3-421b-9ea1-f8eb04a06a5c)      
B-type instructions are mainly used as branch instructions, but they are conditional Branch.  
B-format is mostly same as S-Format, with two register sources (rs1/rs2) and a 12-bit
immediate    
But now immediate represents values -2^12 to +2^12-2 in 2-byte increments  
The 12 immediate bits encode even 13-bit signed byte offsets (lowest bit of offset is always
zero, so no need to store it).     
       
The opcode for type B is "1100011"  
operation between rs1 and rs2( different conditions)  
if(condition) = True   
then pc=pc+immediate value * offset    
else pc=pc+4;    
![image](https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/53a4be07-0823-44e6-8472-a3ef65d5e855)  
    
Branch instructions include BEQ(equal to),BNE(not equal to),BLT(less than),BGE(greater than),
BLTU(less than unsigned),BGEU(greater than unsigned).  
To calculate offset address we need to compose immediate value:IMMD={SXT(IMM[12:1],1'B0}.  

## 5. U-type (upperimmediate-type):
instructions with upper immediates.  
upper immediate is 20-bits.    
![image](https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/00434365-ebf7-4e53-a7ed-4a74b3baa83f)  
-A 20-bit immediate is provided in the U-type instruction.  
-The final operation result is related to the 20-bit immediate, and the result is written back to the rd register.   
-The opcode determines the type of operation. There are no funct3, rs1, rs2, and funct7 in U-type.  
-This type of instruction structure is very simple.  
-Used for two instructions  
1.LUI – Load Upper Immediate.    
LUI is identified by opcode. The opcode name is LUI and the value is 0110111. This instruction writes U_imm into the high 20 bits of rd, and the low 12 bits of rd will be filled with 0.
2.AUIPC – Add Upper Immediate to PC.   
AUIPC is identified by opcode, the opcode name is AUIPC, and the value is 0010111. The instruction is to place the 20-bit immediate in the high 20 bits of the 32-bit, and add the low 12 to the current PC and write it into the rd register. PC is the program counter.     

## 6. J-type:   
 jump instructions    
 ![image](https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/bbddfcfd-5a06-48e1-a515-b3559ba0f0c0)    
The format of this instruction is very similar to U-type, it only have Rd register and immediate and opcode. At the same time, the immediate of J-type is also disrupted. That means that the CPU must first put the immediate numbers together to restore the original immediate numbers when decoding.  

This instruction is used to jump to particular location and address is defined by immediate value and stores next instruction address in link register    

It involves immediate value [11:0] and has base register rs1. Here offset is calculated by rs1 and immediate value.
funct3 is 0 and rd destination register is of 5 bits and opcode is "1100111".  
JALR is for long jump.
IMMI= SXT( imm[11:0] )
JALR : rd = PC +4 = { ( rs1 + IMMI ), 1'b0}  

# Analyzing the instructions:     


## 1. add r6,r2,r1      
```
The given instruction, "add r6, r2, r1," belongs to the R-type instruction set in RISC-V, which is used for arithmetic and logical operations.    
-opcode: 0110011  
-rd (destination register): r6:00110  
-rs1 (first source register): r2:00010  
-rs2 (second source register): r1:00001  
-funct3 (for add operation): 000  
-funct7 (for add operation): 0000000
```  
**#32 bit instruction:**  
    ![image](https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/7ce1736b-493c-4f38-b49a-9e8f402527a0)   

------------------------------------------------------------------------------------------------------------------------------------------------------------

## 2. sub r7,r1,r2       
```
The "sub" instruction is also an R-type instruction, similar to the "add" instruction.  
-opcode: 0110011    
-rd (destination register): r7:00111  
-rs1 (first source register): r1:00001  
-rs2 (second source register): r2:00010    
-funct3 (for sub operation): 000  
-funct7 (for sub operation): 0100000
```
**#32 bit instruction:**     
![image](https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/64922832-63ff-49d7-87e6-bebb8579e0d4)  

------------------------------------------------------------------------------------------------------------------------------------------------------------

## 3. and r8,r1,r3    
```
In RISC-V, the "and" instruction is also an R-type instruction.  
-opcode: 0110011    
-rd (destination register): r8:01000   
-rs1 (first source register): r1:00001  
-rs2 (second source register): r3:00011   
-funct3 (for and operation): 111    
-funct7 (for and operation): 0000000
```    
**#32 bit instruction:**  
![image](https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/52177b2d-730f-4bd7-badf-c49b9dff5d43)  

------------------------------------------------------------------------------------------------------------------------------------------------------------

## 4. or r9,r2,r5  
```
In RISC-V, the "or" instruction is also an R-type instruction.   
-opcode: 0110011  
-rd (destination register): r9:01001  
-rs1 (first source register): r2:00010  
-rs2 (second source register): r5:00101
-funct3 (for or operation): 110  
-funct7 (for or operation): 0000000
```
**#32 bit instruction:**     
![image](https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/43005d73-f08e-4895-8289-34c49d2d492b)  

------------------------------------------------------------------------------------------------------------------------------------------------------------

## 5. xor r10,r1,r4   
```
In RISC-V, the "xor" instruction is also an R-type instruction.  
-opcode: 0110011  
-rd (destination register): r10:01010   
-rs1 (first source register): r1:00001  
-rs2 (second source register): r4:00100  
-funct3 (for xor operation): 100  
-funct7 (for xor operation): 0000000
```  
**#32 bit instruction:**   
![image](https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/79331d6a-2efc-4e8b-b422-4a30c5ce2b24)    


------------------------------------------------------------------------------------------------------------------------------------------------------------
  
## 6. slt r11,r2,r4  
```
In RISC-V, the "slt"(set less than)instruction is also an R-type instruction.   
r2<r4 is True. so,set r11 to 1    
-opcode: 0110011  
-rd (destination register): r11:00001  
-rs1 (first source register): r2:00010  
-rs2 (second source register): r4:00100  
-funct3 (for slt operation): 010  
-funct7 (for slt operation): 0000000
```   
**#32 bit instruction:**     
![image](https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/c00e15f4-6cc0-4b46-8166-444cbde0e8d0)


------------------------------------------------------------------------------------------------------------------------------------------------------------

## 7. addi r12,r4,5     
```
The "addi" instruction is used to add an immediate value to a register and store the result in another register. Hence, this instruction belongs to I-type instruction set.  
-opcode: 0010011  
-rd (destination register): r12:01100  
-rs1 (source register): r4:00100  
-imm[11:0]:5:000000000101  
-funct3 (for addi operation):000
```    
**#32 bit instruction:**  
![image](https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/c5a39651-9f0d-4142-8637-dae70bb29d1e)    


------------------------------------------------------------------------------------------------------------------------------------------------------------

## 8. SW r3,r1,2  
```
The "sw" (store word) instruction is used to store a word from a register into memory.This instruction belongs to S-type instruction set.    
-opcode: 0100011  
-rs1 (base register): r1: 00001    
-rs2 (source register): r3 00011    
-imm[11:5]: 2:0000000    
-imm[4:0]: 2:00010    
-funct3 (for sw operation): 010
```    
**#32 bit instruction:**    
![image](https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/6f0fdb04-a498-48b6-bf57-e257099e9234)  


------------------------------------------------------------------------------------------------------------------------------------------------------------

## 9. LW r13,r1,2   
```
The "lw" (load word) instruction is used to load a word from memory into a register. This instruction belongs to I-type instruction set.  
-opcode: 0000011
-rd (destination register): r13:01101
-rs1 (base register): r1:00001
-imm[11:0]: 2 :000000000010
-funct3 (for lw operation): 010
``` 
**#32 bit instruction:**    
![image](https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/9ff200ae-92de-4316-bccf-3ca8f8575163)   

------------------------------------------------------------------------------------------------------------------------------------------------------------


## 10. beq r0,r0,15    
```
The given instruction is of B-type instruction.  
This encoding specifies that "beq" operation, which checks if r0 is equal to r0 then pc=pc+15 program counter will execute instruction after 15 instructions from current instruction  
-opcode: 1100011  
-rs1 (first source register): r0:00000  
-rs2 (second source register): r0:00000  
-imm[12]: 0    
-imm[10:5]: 15:001111    
-imm[4:1]: 0    
-imm[11]: 0   
-funct3 (for beq operation): 000
```
**#32 bit instruction:**  
![image](https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/044e637b-0a56-42a7-8055-2d0d1ff27e56)


------------------------------------------------------------------------------------------------------------------------------------------------------------

## 11. bne r0,r1,20        
```
If ro!=r1 is true then pc=pc+20----execute 20th instruction from current instruction  
elsif r0!=r1 is false then pc=pc+4 executes next instruction  
-opcode: 1100011  
-rs1 (first source register): r0:00000  
-rs2 (second source register): r1:00001  
-imm[12]: 0  
-imm[10:5]: 20:010100 
-imm[4:1]: 0 
-imm[11]: 0 
-funct3 (for bne operation): 001
``` 
**#32 bit instruction:**    
![image](https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/c8967e6b-4626-4a15-9466-a503cbb74297)  


------------------------------------------------------------------------------------------------------------------------------------------------------------
 
## 12. sll r15,r1,r2(2)     
```
The "sll" (logical left shift) instruction is used to perform a logical left shift on the value in a register. this comes under R-type instruction set.  
opcode: 0110011
rd (destination register): r15:01111
rs1 (source register): r1:00001
rs2 (shift amount): r2:00010
funct3 (for sll operation):001
shamt (shift amount): 2
```
**#32 bit instruction:**    
![image](https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/20cf822c-ad32-4ce8-bead-81bf17997a01)  
This encoding specifies the "sll" operation, which performs a logical left shift on the value in register r1 by 2 positions and stores the result in register r15.


------------------------------------------------------------------------------------------------------------------------------------------------------------

## 13. srl r16,r14,r2(2)    
```
The "srl" (logical right shift) instruction is used to perform a logical right shift on the value in a register.
-opcode: 0110011
-rd (destination register): r16:10000
-rs1 (source register): r14:01110
-rs2 (shift amount): r2:00010
-funct3 (for srl operation): 101
-shamt (shift amount): 2
``` 
**#32 bit instruction:**    
![image](https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/8772ade4-a749-4739-b4d3-deab70656220)  


------------------------------------------------------------------------------------------------------------------------------------------------------------

  





























































 



 








































    
