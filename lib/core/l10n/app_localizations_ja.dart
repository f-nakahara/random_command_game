


import 'app_localizations.dart';

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get player => 'プレイヤー';

  @override
  String checkExplanation(Object subject) {
    return '使用する$subjectにチェックを入れてください。';
  }

  @override
  String addExplanation(Object subject) {
    return '$subjectを新しく追加する場合は「+」ボタンを押してください。';
  }
}
