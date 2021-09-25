import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_command_game/domain/entity/player.dart';
import 'package:random_command_game/presentation/controller/player_controller.dart';
import 'package:random_command_game/presentation/view/player_setting/widget/player_list_item/player_list_item_state.dart';

final playerListItemViewModel = StateNotifierProvider.autoDispose
    .family<PlayerListItemViewModel, PlayerListItemState, Player>(
  (ref, player) => PlayerListItemViewModel(
    player: player,
    controller: ref.read(playerController.notifier),
  ),
);

class PlayerListItemViewModel extends StateNotifier<PlayerListItemState> {
  PlayerListItemViewModel({
    required this.player,
    required PlayerController controller,
  })  : _controller = controller,
        super(
          PlayerListItemState.from(player),
        );

  final Player player;
  final PlayerController _controller;

  /// 参加・不参加
  Future<void> toggle() async {
    final isSelected = !state.isSelected;
    state = state.copyWith(isSelected: isSelected);
    await _controller.updatePlayer(player.id, isSelected: state.isSelected);
  }

  /// 削除
  Future<void> delete() async {
    await _controller.deletePlayer(player.id);
  }
}
