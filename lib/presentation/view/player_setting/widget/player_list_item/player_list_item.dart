import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_command_game/presentation/view/common/check_box_card.dart';
import 'package:random_command_game/presentation/view/player_setting/widget/player_list_item/player_list_item_view_model.dart';

class PlayerListItem extends ConsumerWidget {
  const PlayerListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vm = ref.read(playerListItemViewModel.notifier);
    final state = ref.watch(playerListItemViewModel);
    return CheckBoxCard(
      title: state.name,
      onTap: (_) => vm.toggle(),
      onDelete: vm.delete,
      isSelected: state.isSelected,
    );
  }
}
