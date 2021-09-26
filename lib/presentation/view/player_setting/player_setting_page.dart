import 'package:flutter/material.dart';
import 'package:random_command_game/core/l10n/app_localizations.dart';
import 'package:random_command_game/presentation/view/common/add_explanation.dart';
import 'package:random_command_game/presentation/view/common/check_explanation.dart';
import 'package:random_command_game/presentation/view/player_setting/widget/player_create_button/player_create_button.dart';
import 'package:random_command_game/presentation/view/player_setting/widget/player_list/player_list.dart';

/// プレイヤー設定画面
class PlayerSettingPage extends StatelessWidget {
  const PlayerSettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        title: Text(localization.playerSettingTitle),
      ),
      body: SafeArea(
        child: Column(
          children: [
            CheckExplanation(subject: localization.player),
            AddExplanation(subject: localization.player),
            const Expanded(child: PlayerList()),
          ],
        ),
      ),
      floatingActionButton: const PlayerCreateButton(),
    );
  }
}
