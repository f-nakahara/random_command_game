import 'package:random_command_game/domain/entity/player.dart';
import 'package:random_command_game/presentation/view/player_setting/widget/player_list_item/player_list_item_state.dart';

class PlayerListState {
  PlayerListState._({
    required this.playerStates,
  });

  final List<PlayerListItemState> playerStates;

  factory PlayerListState.from(List<Player> players) {
    final playerStates =
        players.map((e) => PlayerListItemState.from(e)).toList();
    return PlayerListState._(playerStates: playerStates);
  }
}
