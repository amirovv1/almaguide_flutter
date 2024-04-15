// ignore_for_file: deprecated_member_use

import 'package:almaguide_flutter/core/helpers/textstyle_helper.dart';
import 'package:almaguide_flutter/generated/l10n.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class PrivatPolicyScreen extends StatelessWidget {
  const PrivatPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              context.router.pop();
            },
            icon: const Icon(
              Icons.chevron_left,
              color: Colors.black,
            )),
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          S.of(context).privat_policy,
          style: ts(TS.s18w600).copyWith(color: Colors.black),
          textAlign: TextAlign.center,
          maxLines: 2,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16).r,
          child: const Text(
              '1. Общие положения\nНастоящая политика обработки персональных данных составлена в соответствии с требованиями Федерального закона от 27.07.2006. № 152-ФЗ «О персональных данных» (далее — Закон о персональных данных) и определяет порядок обработки персональных данных и меры по обеспечению безопасности персональных данных, предпринимаемые almaguide (далее — Оператор).\n1.1. Оператор ставит своей важнейшей целью и условием осуществления своей деятельности соблюдение прав и свобод человека и гражданина при обработке его персональных данных, в том числе защиты прав на неприкосновенность частной жизни, личную и семейную тайну.\n1.2. Настоящая политика Оператора в отношении обработки персональных данных (далее — Политика) применяется ко всей информации, которую Оператор может получить о посетителях веб-сайта https://almaguide.com.\n2. Основные понятия, используемые в Политике\n2.1. Автоматизированная обработка персональных данных — обработка персональных данных с помощью средств вычислительной техники.\n2.2. Блокирование персональных данных — временное прекращение обработки персональных данных (за исключением случаев, если обработка необходима для уточнения персональных данных).'),
        ),
      ),
    );
  }
}
