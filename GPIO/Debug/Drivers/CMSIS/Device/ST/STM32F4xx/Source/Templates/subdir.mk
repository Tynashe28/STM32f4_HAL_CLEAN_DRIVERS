################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c 

C_DEPS += \
./Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.d 

OBJS += \
./Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.o 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/%.o Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/%.su: ../Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/%.c Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F405xx -c -I../Inc -I"C:/Users/Blessing/Documents/STM32 Embedded Systems API Driver Development Course/Course Content/GPIO/Drivers/CMSIS/Include" -I"C:/Users/Blessing/Documents/STM32 Embedded Systems API Driver Development Course/Course Content/GPIO/Drivers/CMSIS/Device/ST/STM32F4xx/Include" -I"C:/Users/Blessing/Documents/STM32 Embedded Systems API Driver Development Course/Course Content/GPIO/Drivers/STM32F4xx_HAL_Driver/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-CMSIS-2f-Device-2f-ST-2f-STM32F4xx-2f-Source-2f-Templates

clean-Drivers-2f-CMSIS-2f-Device-2f-ST-2f-STM32F4xx-2f-Source-2f-Templates:
	-$(RM) ./Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.d ./Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.o ./Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.su

.PHONY: clean-Drivers-2f-CMSIS-2f-Device-2f-ST-2f-STM32F4xx-2f-Source-2f-Templates

