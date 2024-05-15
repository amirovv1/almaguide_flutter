import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'language_cubit.freezed.dart';

@singleton
class LanguageCubit extends Cubit<LanguageState> {
  LanguageCubit() : super(const LanguageState.initialState()) {
    initLang();
  }
  Future<void> changeLang(String langCode) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('langCode', langCode);
    initLang();
  }

  Future<void> initLang() async {
    late String language;
    SharedPreferences prefs = await SharedPreferences.getInstance();

    String? storedLangCode = prefs.getString('langCode');

    if (storedLangCode == null) {
      prefs.setString('langCode', 'ru');
      language = 'ru';
    } else {
      language = storedLangCode;
    }
    if (kDebugMode) {
      print('ЯЗЫК-$language');
    }

    emit(_InitialPage(langCode: language));
  }
}

@freezed
class LanguageState with _$LanguageState {
  const factory LanguageState.initialState({@Default('') String langCode}) =
      _InitialPage;
}

