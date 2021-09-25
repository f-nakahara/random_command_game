import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_command_game/domain/entity/player.dart';
import 'package:random_command_game/presentation/view/player_setting/widget/player_list_item/player_list_item_state.dart';

final playerListItemViewModel =
    StateNotifierProvider<PlayerListItemViewModel, PlayerListItemState>(
  (ref) => PlayerListItemViewModel(),
);

class PlayerListItemViewModel extends StateNotifier<PlayerListItemState> {
  PlayerListItemViewModel()
      : super(
          PlayerListItemState.from(
            const Player(id: 'id', name: 'こうだい', isSelected: false),
          ),
        );

  /// 参加・不参加
  void toggle() {
    final isSelected = !state.isSelected;
    state = state.copyWith(isSelected: isSelected);
  }

  /// 削除
  Future<void> delete() async {
    debugPrint('項目を削除します。');
  }
}
