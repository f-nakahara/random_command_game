import 'package:random_command_game/domain/entity/player.dart';
import 'package:random_command_game/infrastructure/datasource/player/sqflite/model/sql_player.dart';

abstract class IPlayerDatasource {
  /// プレイヤーの取得
  Future<SQLPlayer> find(String id);

  /// プレイヤー一覧の取得
  Future<List<SQLPlayer>> findAll();

  /// プレイヤーの保存
  Future<void> save(Player player);

  /// プレイヤーの更新
  Future<void> update(Player player);

  /// プレイヤーの削除
  Future<void> delete(String id);
}
