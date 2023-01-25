#pragma once

#include "stm32f7xx.h"

/// Inicjalizacja 1-wire.
///
/// Uruchamia licznik 6 wykorzystywany do dalszej komunikacji
/// @return HAL_OK/HAL_ERROR zależnie od stanu licznika.
HAL_StatusTypeDef wire_init(void);

/// Przeslanie sekwencji reset przez 1-wire.
///
/// @return HAL_OK/HAL_ERROR zależnie od odp. czujnika.
HAL_StatusTypeDef wire_reset(void);

/// Odczytanie danych przez 1-wire.
//
/// Odczytanie 8 bitów oraz połączenie i w bajt.
uint8_t wire_read(void);

/// Wysyłanie danych do czujnika.
///
/// @param byte bajt danych który zostanie przesłany.
void wire_write(uint8_t byte);

/// Policzenie sumy kontrolnej.

/// Pozwala na sprawdzenie powodzenia komunikacji.
///
/// @param data Przesłane dane.
/// @param len Długośc przesyłanej inforamcji.
uint8_t wire_crc(const uint8_t* data, int len);

