import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_command_game/presentation/controller/penalty_controller.dart';
import 'package:random_command_game/presentation/view/penalty_setting/widget/penalty_list_item/penalty_list_item_state.dart';

final penaltyListItemViewModel =
    Provider.autoDispose.family<PenaltyListItemViewModel, PenaltyListItemState>(
  (ref, state) {
    return PenaltyListItemViewModel(
      controller: ref.read(penaltyController.notifier),
      state: state,
    );
  },
);

class PenaltyListItemViewModel {
  PenaltyListItemViewModel({
    required PenaltyController controller,
    required this.state,
  }) : _controller = controller;

  final PenaltyController _controller;
  final PenaltyListItemState state;

  /// 参加・不参加
  Future<void> toggle() async {
    await _controller.updatePenalty(state.id, isSelected: !state.isSelected);
  }

  /// 削除
  Future<void> delete() async {
    await _controller.deletePenalty(state.id);
  }
}
