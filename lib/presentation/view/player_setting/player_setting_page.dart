import 'package:flutter/material.dart';
import 'package:random_command_game/presentation/view/common/check_explanation.dart';
import 'package:random_command_game/presentation/view/common/create_explanation.dart';
import 'package:random_command_game/presentation/view/player_setting/widget/player_list/player_list.dart';

/// プレイヤー設定画面
class PlayerSettingPage extends StatelessWidget {
  const PlayerSettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('プレイヤー設定'),
      ),
      body: SafeArea(
        child: Column(
          children: const [
            CheckExplanation(subject: 'プレイヤー'),
            CreateExplanation(subject: 'プレイヤー'),
            Expanded(child: PlayerList()),
          ],
        ),
      ),
      floatingActionButton: const _CreatePlayerButton(),
    );
  }
}

class _CreatePlayerButton extends StatelessWidget {
  const _CreatePlayerButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {}, // TODO: メンバー追加ダイアログの表示
      child: const Icon(Icons.add),
    );
  }
}
