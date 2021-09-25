import 'package:flutter/material.dart';

/// プレイヤー設定画面
class PlayerettingPage extends StatelessWidget {
  const PlayerettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('プレイヤー設定'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Text('参加するプレイヤーにチェックを入れてください。'),
            Text('プレイヤーを新しく作成する場合は「+」ボタンを押してください。'),
            Card(
              child: CheckboxListTile(
                value: true,
                onChanged: (value) {}, // TODO: チェックボックス処理
                title: Text('こうだい'),
                subtitle: Text('参加中'),
                controlAffinity: ListTileControlAffinity.leading,
                secondary: IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {}, // TODO: メンバー追加ダイアログの表示
        child: const Icon(Icons.add),
      ),
    );
  }
}
