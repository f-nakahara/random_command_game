import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_command_game/application/target/target_application.dart';
import 'package:random_command_game/application/target/target_application_provider.dart';
import 'package:random_command_game/domain/entity/target.dart';

final targetController =
    StateNotifierProvider<TargetController, AsyncValue<List<Target>>>(
  (ref) => TargetController(
    app: ref.read(targetApplicationProvider),
  ),
);

class TargetController extends StateNotifier<AsyncValue<List<Target>>> {
  TargetController({required TargetApplication app})
      : _app = app,
        super(const AsyncLoading());

  final TargetApplication _app;

  /// 同期
  Future<void> init() async {
    final players = await _app.getAllPlayerList();
    state = AsyncData(players);
  }
}
