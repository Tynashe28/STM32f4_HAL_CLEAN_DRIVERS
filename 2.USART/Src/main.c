#include "stm32f4xx_hal.h"

// Usart2 drivers
// PA2 -> usart2_tx -> AF7 -> APB1 Bus
// PA3 -> usart2_rx -> AF7 -> APB1 Bus

int main(void){

	while(1){

	}
}

void SysTick_Handler(){
	HAL_IncTick();
}

void usartComm(void){
	// Configure clock for usart2
	__HAL_RCC_USART2_CLK_ENABLE();
	// Configure clock for usart pins
	// Configure pins for usart alternate function
	GPIO_InitTypeDef usartPin = {0};
	usartPin.Pin = GPIO_PIN_2|GPIO_PIN_3;
	usartPin.Mode = GPIO_MODE_OUTPUT_PP;
	usartPin.
	// Initialize usart
}

