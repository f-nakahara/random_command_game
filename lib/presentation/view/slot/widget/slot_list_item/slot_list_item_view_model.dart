import 'dart:async';
import 'dart:math';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_command_game/presentation/controller/penalty_controller.dart';
import 'package:random_command_game/presentation/controller/player_controller.dart';
import 'package:random_command_game/presentation/controller/target_controller.dart';
import 'package:random_command_game/presentation/view/slot/widget/slot_list_item/slot_list_item_state.dart';

final slotListItemViewModel = StateNotifierProvider.autoDispose
    .family<SlotListItemViewModel, SlotListItemState, SlotListItemType>(
  (ref, type) {
    late final List<String> values;
    switch (type) {
      case SlotListItemType.player:
        values = ref
                .watch(playerController)
                .data
                ?.value
                .map((e) => e.name)
                .toList() ??
            [];
        break;
      case SlotListItemType.target:
        values = ref
                .watch(targetController)
                .data
                ?.value
                .map((e) => e.name)
                .toList() ??
            [];
        break;
      case SlotListItemType.penalty:
        values = ref
                .watch(penaltyController)
                .data
                ?.value
                .map((e) => e.name)
                .toList() ??
            [];
    }
    final value = values[Random().nextInt(values.length)];
    final state = SlotListItemState(type: type, value: value);
    return SlotListItemViewModel(
      state,
      values: values,
    );
  },
);

class SlotListItemViewModel extends StateNotifier<SlotListItemState> {
  SlotListItemViewModel(
    SlotListItemState state, {
    required this.values,
  }) : super(state) {
    endlessChange();
  }

  final List<String> values;

  Future<void> endlessChange() async {
    final changeSpeed = Random().nextInt(100) + 100;
    Timer.periodic(Duration(milliseconds: changeSpeed), (timer) {
      final value = values[Random().nextInt(values.length)];
      if (mounted) {
        state = state.copyWith(value: value);
      }
    });
  }
}
