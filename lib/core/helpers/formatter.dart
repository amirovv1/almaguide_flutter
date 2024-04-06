class Formatter {
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
}