import 'package:almaguide_flutter/features/categories/presentation/widgets/category_details_widgets/order_modal.dart';
import 'package:almaguide_flutter/generated/l10n.dart';
import 'package:flutter/material.dart';

class Formatter {
  static String getServiceName(String number, BuildContext context) {
    switch (number) {
      case '101':
        return S.of(context).fireman;
      case '102':
        return S.of(context).policies;
      case '103':
        return S.of(context).ambulance;
      case '104':
        return S.of(context).gas_service;
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
    double meters = double.parse(metersString);

    double kilometers = meters / 1000;

    return kilometers.toInt().toString();
  }

  static String sortFormat(Order order, BuildContext context) {
    switch (order) {
      case Order.name:
        return S.of(context).name_sorting;
      case Order.avgRate:
        return S.of(context).rating_sorting;
      case Order.distance:
        return S.of(context).distance_sorting;
      default:
        return "Unknown";
    }
  }
}
