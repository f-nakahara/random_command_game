


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

  @override
  String createTitle(Object subject) {
    return '$subject作成';
  }

  @override
  String get playerSettingTitle => 'プレイヤー設定';

  @override
  String get penaltySettingTitle => 'ペナルティー設定';

  @override
  String get deletionNotice => '本当に削除しますか？';

  @override
  String get delete => '削除';

  @override
  String get cancel => 'キャンセル';

  @override
  String get close => '閉じる';

  @override
  String get create => '作成';
}
