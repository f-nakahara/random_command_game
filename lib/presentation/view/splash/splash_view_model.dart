import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_command_game/presentation/controller/penalty_controller.dart';
import 'package:random_command_game/presentation/controller/player_controller.dart';
import 'package:random_command_game/presentation/controller/target_controller.dart';

final splashViewModel = StateNotifierProvider<SplashViewModel, bool>(
  (ref) => SplashViewModel(ref.read),
);

class SplashViewModel extends StateNotifier<bool> {
  SplashViewModel(this._reader) : super(false);

  final Reader _reader;

  Future<void> init() async {
    await Future.wait([
      _reader(playerController.notifier).init(),
      _reader(targetController.notifier).init(),
      _reader(penaltyController.notifier).init(),
    ]);
    state = true;
  }
}
