// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Categories`
  String get categories {
    return Intl.message(
      'Categories',
      name: 'categories',
      desc: '',
      args: [],
    );
  }

  /// `Map`
  String get map {
    return Intl.message(
      'Map',
      name: 'map',
      desc: '',
      args: [],
    );
  }

  /// `Favorites`
  String get favorites {
    return Intl.message(
      'Favorites',
      name: 'favorites',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Show All`
  String get showAll {
    return Intl.message(
      'Show All',
      name: 'showAll',
      desc: '',
      args: [],
    );
  }

  /// `Push Notifications`
  String get push_notification {
    return Intl.message(
      'Push Notifications',
      name: 'push_notification',
      desc: '',
      args: [],
    );
  }

  /// `App Language`
  String get app_language {
    return Intl.message(
      'App Language',
      name: 'app_language',
      desc: '',
      args: [],
    );
  }

  /// `My Tours`
  String get my_tours {
    return Intl.message(
      'My Tours',
      name: 'my_tours',
      desc: '',
      args: [],
    );
  }

  /// `Emergency Contacts`
  String get emerge_contacts {
    return Intl.message(
      'Emergency Contacts',
      name: 'emerge_contacts',
      desc: '',
      args: [],
    );
  }

  /// `Tourist Call Center`
  String get call_center {
    return Intl.message(
      'Tourist Call Center',
      name: 'call_center',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get privat_policy {
    return Intl.message(
      'Privacy Policy',
      name: 'privat_policy',
      desc: '',
      args: [],
    );
  }

  /// `Registration`
  String get registration {
    return Intl.message(
      'Registration',
      name: 'registration',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account? `
  String get have_account {
    return Intl.message(
      'Already have an account? ',
      name: 'have_account',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get sign_in {
    return Intl.message(
      'Sign In',
      name: 'sign_in',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get name {
    return Intl.message(
      'Full Name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Number`
  String get number {
    return Intl.message(
      'Number',
      name: 'number',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get mail {
    return Intl.message(
      'Email',
      name: 'mail',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Profile Photo (optional)`
  String get profile_photo_upload {
    return Intl.message(
      'Profile Photo (optional)',
      name: 'profile_photo_upload',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account?`
  String get dont_have_account {
    return Intl.message(
      'Don\'t have an account?',
      name: 'dont_have_account',
      desc: '',
      args: [],
    );
  }

  /// `Success`
  String get success {
    return Intl.message(
      'Success',
      name: 'success',
      desc: '',
      args: [],
    );
  }

  /// `Error`
  String get error {
    return Intl.message(
      'Error',
      name: 'error',
      desc: '',
      args: [],
    );
  }

  /// `Location`
  String get location {
    return Intl.message(
      'Location',
      name: 'location',
      desc: '',
      args: [],
    );
  }

  /// `Build Route`
  String get make_route {
    return Intl.message(
      'Build Route',
      name: 'make_route',
      desc: '',
      args: [],
    );
  }

  /// `Details`
  String get details {
    return Intl.message(
      'Details',
      name: 'details',
      desc: '',
      args: [],
    );
  }

  /// `Description`
  String get description {
    return Intl.message(
      'Description',
      name: 'description',
      desc: '',
      args: [],
    );
  }

  /// `Reviews`
  String get reviews {
    return Intl.message(
      'Reviews',
      name: 'reviews',
      desc: '',
      args: [],
    );
  }

  /// `Leave a Comment`
  String get make_comment {
    return Intl.message(
      'Leave a Comment',
      name: 'make_comment',
      desc: '',
      args: [],
    );
  }

  /// `Your Info`
  String get your_info {
    return Intl.message(
      'Your Info',
      name: 'your_info',
      desc: '',
      args: [],
    );
  }

  /// `Log Out`
  String get exit {
    return Intl.message(
      'Log Out',
      name: 'exit',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to log out?`
  String get exit_from_app {
    return Intl.message(
      'Are you sure you want to log out?',
      name: 'exit_from_app',
      desc: '',
      args: [],
    );
  }

  /// `Additional Info`
  String get addit_info {
    return Intl.message(
      'Additional Info',
      name: 'addit_info',
      desc: '',
      args: [],
    );
  }

  /// `Tourist Call Center`
  String get touristic_call_center {
    return Intl.message(
      'Tourist Call Center',
      name: 'touristic_call_center',
      desc: '',
      args: [],
    );
  }

  /// `Route`
  String get route {
    return Intl.message(
      'Route',
      name: 'route',
      desc: '',
      args: [],
    );
  }

  /// `{value} days`
  String tour_duration(Object value) {
    return Intl.message(
      '$value days',
      name: 'tour_duration',
      desc: '',
      args: [value],
    );
  }

  /// `Duration`
  String get duration {
    return Intl.message(
      'Duration',
      name: 'duration',
      desc: '',
      args: [],
    );
  }

  /// `Mode of Transportation`
  String get way2travel {
    return Intl.message(
      'Mode of Transportation',
      name: 'way2travel',
      desc: '',
      args: [],
    );
  }

  /// `No Reviews`
  String get reviews_empty {
    return Intl.message(
      'No Reviews',
      name: 'reviews_empty',
      desc: '',
      args: [],
    );
  }

  /// `Leave a Review`
  String get take_review {
    return Intl.message(
      'Leave a Review',
      name: 'take_review',
      desc: '',
      args: [],
    );
  }

  /// `How was your trip?`
  String get how_trip {
    return Intl.message(
      'How was your trip?',
      name: 'how_trip',
      desc: '',
      args: [],
    );
  }

  /// `Write your review here...`
  String get write_review_this {
    return Intl.message(
      'Write your review here...',
      name: 'write_review_this',
      desc: '',
      args: [],
    );
  }

  /// `Send`
  String get send {
    return Intl.message(
      'Send',
      name: 'send',
      desc: '',
      args: [],
    );
  }

  /// `Tour Title`
  String get tour_titile {
    return Intl.message(
      'Tour Title',
      name: 'tour_titile',
      desc: '',
      args: [],
    );
  }

  /// `Total`
  String get total {
    return Intl.message(
      'Total',
      name: 'total',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get Confirm {
    return Intl.message(
      'Confirm',
      name: 'Confirm',
      desc: '',
      args: [],
    );
  }

  /// `Pay`
  String get pay {
    return Intl.message(
      'Pay',
      name: 'pay',
      desc: '',
      args: [],
    );
  }

  /// `You have successfully purchased the tour`
  String get success_pay_details {
    return Intl.message(
      'You have successfully purchased the tour',
      name: 'success_pay_details',
      desc: '',
      args: [],
    );
  }

  /// `Back to Home`
  String get back_to_home {
    return Intl.message(
      'Back to Home',
      name: 'back_to_home',
      desc: '',
      args: [],
    );
  }

  /// `Go to Route`
  String get go_to_route {
    return Intl.message(
      'Go to Route',
      name: 'go_to_route',
      desc: '',
      args: [],
    );
  }

  /// `List is empty`
  String get empty_list {
    return Intl.message(
      'List is empty',
      name: 'empty_list',
      desc: '',
      args: [],
    );
  }

  /// `Tours`
  String get tours {
    return Intl.message(
      'Tours',
      name: 'tours',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Purchase`
  String get confirm_pay_title {
    return Intl.message(
      'Confirm Purchase',
      name: 'confirm_pay_title',
      desc: '',
      args: [],
    );
  }

  /// `Card Number`
  String get card_number {
    return Intl.message(
      'Card Number',
      name: 'card_number',
      desc: '',
      args: [],
    );
  }

  /// `Expiry Date`
  String get card_limit {
    return Intl.message(
      'Expiry Date',
      name: 'card_limit',
      desc: '',
      args: [],
    );
  }

  /// `Payment`
  String get payment {
    return Intl.message(
      'Payment',
      name: 'payment',
      desc: '',
      args: [],
    );
  }

  /// `Sorting`
  String get sorting {
    return Intl.message(
      'Sorting',
      name: 'sorting',
      desc: '',
      args: [],
    );
  }

  /// `Filter`
  String get filter {
    return Intl.message(
      'Filter',
      name: 'filter',
      desc: '',
      args: [],
    );
  }

  /// `A-Z`
  String get name_sorting {
    return Intl.message(
      'A-Z',
      name: 'name_sorting',
      desc: '',
      args: [],
    );
  }

  /// `By Rating`
  String get rating_sorting {
    return Intl.message(
      'By Rating',
      name: 'rating_sorting',
      desc: '',
      args: [],
    );
  }

  /// `Nearby`
  String get distance_sorting {
    return Intl.message(
      'Nearby',
      name: 'distance_sorting',
      desc: '',
      args: [],
    );
  }

  /// `Fire Department`
  String get fireman {
    return Intl.message(
      'Fire Department',
      name: 'fireman',
      desc: '',
      args: [],
    );
  }

  /// `Police`
  String get policies {
    return Intl.message(
      'Police',
      name: 'policies',
      desc: '',
      args: [],
    );
  }

  /// `Ambulance`
  String get ambulance {
    return Intl.message(
      'Ambulance',
      name: 'ambulance',
      desc: '',
      args: [],
    );
  }

  /// `Gas Emergency Service`
  String get gas_service {
    return Intl.message(
      'Gas Emergency Service',
      name: 'gas_service',
      desc: '',
      args: [],
    );
  }

  /// `Authorization Required`
  String get auth_need {
    return Intl.message(
      'Authorization Required',
      name: 'auth_need',
      desc: '',
      args: [],
    );
  }

  /// `Authorization is required to perform this function`
  String get auth_need_description {
    return Intl.message(
      'Authorization is required to perform this function',
      name: 'auth_need_description',
      desc: '',
      args: [],
    );
  }

  /// `Add to favorites`
  String get add_to_fav {
    return Intl.message(
      'Add to favorites',
      name: 'add_to_fav',
      desc: '',
      args: [],
    );
  }

  /// `Routes`
  String get routes {
    return Intl.message(
      'Routes',
      name: 'routes',
      desc: '',
      args: [],
    );
  }

  /// `Create route`
  String get create_route {
    return Intl.message(
      'Create route',
      name: 'create_route',
      desc: '',
      args: [],
    );
  }

  /// `Пароль успешно обновлен`
  String get success_change_password {
    return Intl.message(
      'Пароль успешно обновлен',
      name: 'success_change_password',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'kk'),
      Locale.fromSubtags(languageCode: 'ru'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
