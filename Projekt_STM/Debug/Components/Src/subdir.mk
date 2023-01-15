################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Components/Src/1wire.c \
../Components/Src/DS18B20.c \
../Components/Src/fan.c \
../Components/Src/lcd.c 

OBJS += \
./Components/Src/1wire.o \
./Components/Src/DS18B20.o \
./Components/Src/fan.o \
./Components/Src/lcd.o 

C_DEPS += \
./Components/Src/1wire.d \
./Components/Src/DS18B20.d \
./Components/Src/fan.d \
./Components/Src/lcd.d 


# Each subdirectory must supply rules for building sources it contributes
Components/Src/%.o Components/Src/%.su: ../Components/Src/%.c Components/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F746xx -c -I../Core/Inc -I"D:/Projekt_SM/Regulacja-pedkosci-obrotowej-projekt-sm/Projekt_STM/Components/Inc" -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/Third_Party/ARM_CMSIS/CMSIS/Core/Include/ -I../Middlewares/Third_Party/ARM_CMSIS/CMSIS/Core_A/Include/ -I../Middlewares/Third_Party/ARM_CMSIS/CMSIS/DSP/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Components-2f-Src

clean-Components-2f-Src:
	-$(RM) ./Components/Src/1wire.d ./Components/Src/1wire.o ./Components/Src/1wire.su ./Components/Src/DS18B20.d ./Components/Src/DS18B20.o ./Components/Src/DS18B20.su ./Components/Src/fan.d ./Components/Src/fan.o ./Components/Src/fan.su ./Components/Src/lcd.d ./Components/Src/lcd.o ./Components/Src/lcd.su

.PHONY: clean-Components-2f-Src

