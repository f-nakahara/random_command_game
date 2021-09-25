import 'package:flutter/material.dart';
import 'package:random_command_game/presentation/view/common/check_box_card.dart';

class PlayerListItem extends StatelessWidget {
  const PlayerListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CheckBoxCard(
      title: 'こうだい',
      onTap: (value) {},
      onDelete: () {},
    );
  }
}
