import 'package:random_command_game/domain/entity/player.dart';
import 'package:random_command_game/domain/repository/i_player_repository.dart';

class PlayerRepository implements IPlayerRepository {
  @override
  Future<Player> find(String id) async {
    // TODO: implement find
    throw UnimplementedError();
  }

  @override
  Future<List<Player>> findAll() async {
    // TODO: implement findAll
    throw UnimplementedError();
  }

  @override
  Future<void> save(Player player) async {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  Future<void> update(Player player) async {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Future<void> delete(String id) async {
    // TODO: implement delete
    throw UnimplementedError();
  }
}
