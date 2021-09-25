import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_command_game/domain/entity/player.dart';
import 'package:random_command_game/presentation/controller/player_controller.dart';

final playerListViewModel = Provider<PlayerListViewModel>((ref) {
  final players = ref.watch(playerController);
  return PlayerListViewModel(players: players);
});

class PlayerListViewModel {
  PlayerListViewModel({required this.players});

  final AsyncValue<List<Player>> players;
}
