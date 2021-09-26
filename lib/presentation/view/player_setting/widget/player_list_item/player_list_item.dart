import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_command_game/core/util/navigator_util.dart';
import 'package:random_command_game/domain/entity/player.dart';
import 'package:random_command_game/presentation/view/common/check_box_card.dart';
import 'package:random_command_game/presentation/view/common/delete_dialog.dart';
import 'package:random_command_game/presentation/view/player_setting/widget/player_list_item/player_list_item_view_model.dart';

class PlayerListItem extends ConsumerWidget {
  const PlayerListItem(this.player, {Key? key}) : super(key: key);

  final Player player;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vm = ref.read(playerListItemViewModel(player).notifier);
    final state = ref.watch(playerListItemViewModel(player));
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
