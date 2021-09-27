import 'package:random_command_game/domain/entity/player.dart';

/// [Player] Repository Interface
abstract class IPlayerRepository {
  /// プレイヤーを取得
  Future<Player?> find(String id);

  /// プレイヤーを取得（名前検索）
  Future<Player?> findByName(String name);

  /// プレイヤーを全件取得
  Future<List<Player>> findAll();

  /// プレイヤーを保存
  Future<void> save(Player player);

  /// プレイヤーを更新
  Future<void> update(Player player);

  /// プレイヤーを削除
  Future<void> delete(String id);
}
