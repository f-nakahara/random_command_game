import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_command_game/presentation/view/player_setting/widget/player_list_item/player_list_item_state.dart';

class PlayerListItemViewModel extends StateNotifier<PlayerListItemState> {
  PlayerListItemViewModel(PlayerListItemState state) : super(state);

  /// 参加・不参加
  void toggle() {
    final newState = state;
    newState.isSelected = !state.isSelected;
    state = newState;
  }

  /// 削除
  Future<void> delete() async {}
}
