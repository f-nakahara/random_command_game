


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

  @override
  String createTitle(Object subject) {
    return 'Create $subject';
  }

  @override
  String get playerSettingTitle => 'Player Setting';

  @override
  String get penaltySettingTitle => 'Penalty Setting';

  @override
  String get deletionNotice => 'Do you really want to delete this?';

  @override
  String get delete => 'Delete';

  @override
  String get cancel => 'Cancel';

  @override
  String get close => 'Close';

  @override
  String get create => 'Create';
}
