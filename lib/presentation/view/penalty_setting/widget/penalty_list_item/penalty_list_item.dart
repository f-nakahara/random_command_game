import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_command_game/core/util/navigator_util.dart';
import 'package:random_command_game/presentation/view/common/check_box_card.dart';
import 'package:random_command_game/presentation/view/common/delete_dialog.dart';
import 'package:random_command_game/presentation/view/penalty_setting/widget/penalty_list_item/penalty_list_item_state.dart';
import 'package:random_command_game/presentation/view/penalty_setting/widget/penalty_list_item/penalty_list_item_view_model.dart';

class PenaltyListItem extends ConsumerWidget {
  const PenaltyListItem(this.state, {Key? key}) : super(key: key);

  final PenaltyListItemState state;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vm = ref.read(penaltyListItemViewModel(state));
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
