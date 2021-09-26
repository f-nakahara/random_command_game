import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_command_game/presentation/controller/player_controller.dart';

final playerCreateButtonViewModel = Provider<PlayerCreateButtonViewModel>(
  (ref) => PlayerCreateButtonViewModel(
    ref.read(playerController.notifier),
  ),
);

class PlayerCreateButtonViewModel {
  PlayerCreateButtonViewModel(this.controller);

  final PlayerController controller;

  Future<void> create({required String name}) async {
    await controller.createPlayer(name: name);
  }
}
