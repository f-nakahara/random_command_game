import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_command_game/application/player/player_application.dart';
import 'package:random_command_game/application/player/player_application_provider.dart';
import 'package:random_command_game/domain/entity/player.dart';

final playerController =
    StateNotifierProvider<PlayerController, AsyncValue<List<Player>>>(
  (ref) => PlayerController(
    app: ref.read(playerApplicationProvider),
  ),
);

class PlayerController extends StateNotifier<AsyncValue<List<Player>>> {
  PlayerController({required PlayerApplication app})
      : _app = app,
        super(const AsyncLoading()) {
    _fetch();
  }

  final PlayerApplication _app;

  /// 同期
  Future<void> _fetch() async {
    final players = await _app.getAllPlayerList();
    state = AsyncData(players);
  }

  /// プレイヤー削除
  Future<void> deletePlayer(String id) async {
    try {
      await _app.deletePlayer(id);
      final players = state.data!.value;
      players.removeWhere((element) => element.id == id);
      state = AsyncData(players);
    } catch (e) {
      rethrow;
    }
  }

  /// プレイヤー作成
  Future<void> createPlayer({required String name}) async {
    final player = await _app.createPlayer(name: name);
    final players = state.data!.value;
    players.add(player);
    state = AsyncData(players);
  }

  /// プレイヤー更新
  Future<void> updatePlayer(String id, {bool? isSelected}) async {
    final player = await _app.updatePlayer(id, isSelected: isSelected);
    final players = state.data!.value;
    final index = players.indexWhere((element) => element == player);
    if (index != -1) {
      players[index] = player;
      state = AsyncData(players);
    }
  }
}
