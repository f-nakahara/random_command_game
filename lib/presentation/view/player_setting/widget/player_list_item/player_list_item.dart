import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_command_game/core/util/navigator_util.dart';
import 'package:random_command_game/presentation/view/common/check_box_card.dart';
import 'package:random_command_game/presentation/view/common/delete_dialog.dart';
import 'package:random_command_game/presentation/view/player_setting/widget/player_list_item/player_list_item_state.dart';
import 'package:random_command_game/presentation/view/player_setting/widget/player_list_item/player_list_item_view_model.dart';

class PlayerListItem extends ConsumerWidget {
  const PlayerListItem(this.state, {Key? key}) : super(key: key);

  final PlayerListItemState state;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vm = ref.read(playerListItemViewModel(state));
    return CheckBoxCard(
      title: state.name,
      onTap: (_) => vm.toggle(),
      onDelete: () {
        showDialog(
          context: context,
          builder: (context) {
            return DeleteDialog(
              onDelete: () async {
                await vm.delete();
                NavigatorUtil.pop(context);
              },
              playerName: state.name,
            );
          },
        );
      },
      isSelected: state.isSelected,
    );
  }
}
