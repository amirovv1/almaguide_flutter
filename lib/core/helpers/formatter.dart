import 'package:flutter/material.dart';

class Formatter {
  static String getServiceName(String number, BuildContext context) {
    switch (number) {
      case '101':
        return 'Служба пожаротушения';
      case '102':
        return 'Полиция';
      case '103':
        return 'Скорая медицинская помощь';
      case '104':
        return 'Аварийная служба газа';
      default:
        return 'Неизвестная служба';
    }
  }

  static String getLanguageName(String languageCode) {
    switch (languageCode) {
      case 'en':
        return 'English';
      case 'kk':
        return 'Қазақша';
      case 'ru':
        return 'Русский';
      default:
        return 'Unknown Language';
    }
  }


 static String convertMetersToKilometers(String metersString) {
    // Преобразуем строку в число
    double meters = double.parse(metersString);

    // Переводим метры в километры
    double kilometers = meters / 1000;

    // Возвращаем результат как строку
    return kilometers.toInt().toString();
  }
}
