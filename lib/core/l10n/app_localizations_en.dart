


import 'app_localizations.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get player => 'Player';

  @override
  String checkExplanation(Object subject) {
    return 'Please check the $subject to use.';
  }

  @override
  String addExplanation(Object subject) {
    return 'Press the 「+」 button to add a new $subject.';
  }
}
