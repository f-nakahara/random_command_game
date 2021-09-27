import 'package:random_command_game/domain/entity/penalty.dart';
import 'package:random_command_game/presentation/view/penalty_setting/widget/penalty_list_item/penalty_list_item_state.dart';

class PenaltyListState {
  PenaltyListState._({
    required this.penaltyStates,
  });

  final List<PenaltyListItemState> penaltyStates;

  factory PenaltyListState.from(List<Penalty> penalties) {
    final penaltyStates =
        penalties.map((e) => PenaltyListItemState.from(e)).toList();
    return PenaltyListState._(penaltyStates: penaltyStates);
  }
}
