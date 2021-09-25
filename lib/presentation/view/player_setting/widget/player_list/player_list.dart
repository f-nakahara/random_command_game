import 'package:flutter/material.dart';
import 'package:random_command_game/presentation/view/player_setting/widget/player_list_item/player_list_item.dart';

class PlayerList extends StatelessWidget {
  const PlayerList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return const PlayerListItem();
      },
    );
  }
}
