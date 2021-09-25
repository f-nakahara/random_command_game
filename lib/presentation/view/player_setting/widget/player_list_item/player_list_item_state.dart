import 'package:random_command_game/domain/entity/player.dart';

class PlayerListItemState {
  final String id;
  final String name;
  bool isSelected;

  PlayerListItemState._({
    required this.id,
    required this.name,
    required this.isSelected,
  });

  factory PlayerListItemState.from(Player player) {
    return PlayerListItemState._(
      id: player.id,
      name: player.name,
      isSelected: player.isSelected,
    );
  }
}
