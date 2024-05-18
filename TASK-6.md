# Implementation of `2-bit Comparator` using VSDSquadron Mini Board:
###  Overview:  
This project aims to design and implement a 2-bit comparator using the VSDSquadron Mini board. A 2-bit comparator is a digital circuit that compares two 2-bit binary numbers and indicates whether one number is greater than, less than, or equal to the other. The project involves designing the comparator logic using C programming in Visual Studio Code, setting up the hardware connections on a breadboard, and verifying the functionality through LEDs connected to the output.  

###  Project Objective:    
The main objectives of this project are:

> * 1. Design a 2-bit comparator using C programming.
> * 2. Implement the designed comparator on the VSDSquadron Mini board.  
> * 3. Verify the correct functionality of the comparator by using LEDs to display the comparison results.  
> * 4. Gain hands-on experience in digital circuit design, C programming, and hardware implementation.  

### Key Components:
> * 1. **VSDSquadron Mini Board**: The main microcontroller board used for processing and logic implementation.
> * 2. **Breadboard and Jumper Wires**: For building and testing the circuit.
> * 3. **LEDs**: To display the comparison results.This project requires 3 LEDs.
> * 4. **Resistors**: To limit the current to the LEDs.220Ohm resistors are used in this project.
> * 5. **Switches**: 4 push-button switches for input.


### Pin Configuration:
| LED AND PUSH BUTTONS   | VSD SQUADRON BOARD |
| --------------- | --------------- |
| LED1 | PIN4 (PD4) |
| LED2 | PIN5 (PD5) |
| LED3 | PIN6 (PD6) |
| SWITCH1 | PIN0 (PC0) |
| SWITCH2 | PIN1 (PC1) |
| SWITCH3 | PIN2 (PC2) |
| SWITCH4 | PIN3 (PC3) |


### Circuit Diagram:    
<img width="592" alt="image" src="https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/a47d7ce5-ce7e-4189-bf16-c8aac225db1f">
<br>   

### Functional Description:
> * A > B: LED1 (Yellow color) lights up when a is greater than b.
> * A < B: LED2 (Red color) lights up when a is less than b.
> * A = B: LED3 (Green color) lights up when both numbers are equal.


### Truth Table of 2-bit comparator:     
<img width="428" alt="image" src="https://github.com/KeerthiPatil/VSDSQUADRON_MINI_INTERNSHIP/assets/167600409/0ca58fae-82df-4591-af4e-ace593d8bd82">
<br>    

### Code for implementation of 2-bit comparator using VSDSquadron Mini Board(.C Code):  

```
#include <ch32v00x.h>
#include <debug.h>

// Define pins for the inputs (assuming PC0, PC1 for A and PC2, PC3 for B)
#define A0_PIN GPIO_Pin_0
#define A1_PIN GPIO_Pin_1
#define B0_PIN GPIO_Pin_2
#define B1_PIN GPIO_Pin_3

// Define pins for the outputs (assuming PD4 for A > B, PD5 for A == B, PD6 for A < B)
#define GT_PIN GPIO_Pin_4
#define EQ_PIN GPIO_Pin_5
#define LT_PIN GPIO_Pin_6

void GPIO_Config(void) {
    GPIO_InitTypeDef GPIO_InitStructure;

    // Enable GPIO clocks for port C and port D
    RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOC, ENABLE);
    RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOD, ENABLE);

    // Configure input pins (PC0, PC1, PC2, PC3)
    GPIO_InitStructure.GPIO_Pin = A0_PIN | A1_PIN | B0_PIN | B1_PIN;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IPU;
    GPIO_Init(GPIOC, &GPIO_InitStructure);

    // Configure output pins (PD4, PD5, PD6)
    GPIO_InitStructure.GPIO_Pin = GT_PIN | EQ_PIN | LT_PIN;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_Init(GPIOD, &GPIO_InitStructure);
}

int main(void) {
    // Initialize the GPIO
    NVIC_PriorityGroupConfig(NVIC_PriorityGroup_2);
    SystemCoreClockUpdate();
    Delay_Init();
    GPIO_Config();

    while (1) {
        // Read the inputs from port C
        uint8_t A = (GPIO_ReadInputDataBit(GPIOC, A0_PIN) << 0) | (GPIO_ReadInputDataBit(GPIOC, A1_PIN) << 1);
        uint8_t B = (GPIO_ReadInputDataBit(GPIOC, B0_PIN) << 0) | (GPIO_ReadInputDataBit(GPIOC, B1_PIN) << 1);

        // Clear output pins on port D
        GPIO_ResetBits(GPIOD, GT_PIN | EQ_PIN | LT_PIN);

        // Compare A and B and set the corresponding output on port D
        if (A > B) {
            GPIO_SetBits(GPIOD, GT_PIN);
        } else if (A == B) {
            GPIO_SetBits(GPIOD, EQ_PIN);
        } else {
            GPIO_SetBits(GPIOD, LT_PIN);
        }
        Delay_Ms(3000);
    }
}
```

### Project Demonstration:  



### Conclusion:
**This implementation demonstrates the use of the VSDSquadron Mini board to design a basic digital circuit. The 2-bit comparator effectively compares two binary numbers and outputs the comparison results through LEDs. This project reinforces the fundamental concepts of digital design.Overall, this project was a valuable learning experience.**
