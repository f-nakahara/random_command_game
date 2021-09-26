import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_command_game/presentation/controller/player_controller.dart';

final playerCreateFormViewModel =
    Provider.autoDispose<PlayerCreateFormViewModel>(
  (ref) => PlayerCreateFormViewModel(
    ref.read(playerController.notifier),
  ),
);

class PlayerCreateFormViewModel {
  PlayerCreateFormViewModel(this.controller);

  final PlayerController controller;

  Future<void> create({required String name}) async {
    await controller.createPlayer(name: name);
  }
}
