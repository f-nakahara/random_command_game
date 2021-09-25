import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:random_command_game/domain/entity/player.dart';

part 'player_list_item_state.freezed.dart';

@freezed
class PlayerListItemState with _$PlayerListItemState {
  const factory PlayerListItemState._({
    required String id,
    required String name,
    required bool isSelected,
  }) = _PlayerListItemState;

  factory PlayerListItemState.from(Player player) {
    return PlayerListItemState._(
      id: player.id,
      name: player.name,
      isSelected: player.isSelected,
    );
  }
}
