#include "stm32f7xx.h"

#define DS18B20_ROM_CODE_SIZE		8

/// Inicjalizacja 1-wire.
///
/// @return  HAL_OK/HAL_ERROR.
HAL_StatusTypeDef ds18b20_init(void);

/// Odczytaj adres czujnika i policz CRC
///
/// Pozwala na odczytanie adresu badanego czujnika.
/// @return  HAL_OK/HAL_ERROR
/// @param rom_code tablica do zapisania odczytanego adresu.
HAL_StatusTypeDef ds18b20_read_address(uint8_t* rom_code);

/// Rozpocznij pomiar temperatury.
///
/// Wysyla komende rozpoczynajaca pomiary przez czujnik.
/// @param rom_code Adres urządzenia do którego wysyłamy dane lub NULL.
/// @return HAL_OK/HAL_ERROR
HAL_StatusTypeDef ds18b20_start_measure(const uint8_t* rom_code);

/// Pomiar temperatury z czujnika.
///
/// @return Temperatura w stopniach Celsjusza
/// @param rom_code  adres czujnika lub NULL
float ds18b20_get_temp(const uint8_t* rom_code);
