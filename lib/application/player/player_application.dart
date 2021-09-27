import 'package:random_command_game/domain/entity/player.dart';
import 'package:random_command_game/domain/repository/i_player_repository.dart';
import 'package:uuid/uuid.dart';

class PlayerApplication {
  PlayerApplication({required IPlayerRepository repository})
      : _repository = repository;
  final IPlayerRepository _repository;

  /// 全てのプレイヤーを取得する
  Future<List<Player>> getAllPlayerList() async {
    final players = await _repository.findAll();
    return players;
  }

  /// プレイヤーを作成する
  Future<Player> createPlayer({required String name}) async {
    final id = const Uuid().v4();
    final date = DateTime.now();
    final player = Player(
      id: id,
      name: name,
      isSelected: true,
      createdAt: date,
      updatedAt: date,
    );
    await _repository.save(player);
    final result = await _repository.find(id);
    return result;
  }

  /// プレイヤーを削除する
  Future<void> deletePlayer(String id) async {
    await _repository.delete(id);
  }
}
