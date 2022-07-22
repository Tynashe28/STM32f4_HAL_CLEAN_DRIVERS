#include "stm32f4xx_hal.h"
// turn on led with button

// declare pins

//e.g BTN = PC13 and LED = PA5

void buttonInit(void);
void ledInit(void);
int main(void){
	HAL_Init();
	buttonInit();
	ledInit();
	while(1){
		uint8_t btnStatus = HAL_GPIO_ReadPin(GPIOC, GPIO_PIN_13);
		HAL_GPIO_WritePin(GPIOA, GPIO_PIN_5, btnStatus);
	}
}

void SysTick_Handler(){
	HAL_IncTick();
}

void buttonInit(void){
	__HAL_RCC_GPIOC_CLK_ENABLE();
	GPIO_InitTypeDef btnStructure = {0};
	btnStructure.Pin = GPIO_PIN_13;
	btnStructure.Mode = GPIO_MODE_INPUT;
	btnStructure.Pull = GPIO_NOPULL;
	btnStructure.Speed = GPIO_SPEED_FREQ_LOW;

	HAL_GPIO_Init(GPIOC, &btnStructure);
}
void ledInit(void){
	__HAL_RCC_GPIOC_CLK_ENABLE();
	GPIO_InitTypeDef ledStructure = {0};
	ledStructure.Pin = GPIO_PIN_5;
	ledStructure.Mode = GPIO_MODE_OUTPUT_PP;
	ledStructure.Pull = GPIO_NOPULL;
	ledStructure.Speed = GPIO_SPEED_FREQ_LOW;

	HAL_GPIO_Init(GPIOA, &ledStructure);
}
