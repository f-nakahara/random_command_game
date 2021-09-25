import 'package:path/path.dart';
import 'package:random_command_game/core/config/app_config.dart';
import 'package:random_command_game/core/failure/duplicate_failure.dart';
import 'package:random_command_game/core/failure/not_found_failure.dart';
import 'package:random_command_game/domain/entity/player.dart';
import 'package:random_command_game/infrastructure/datasource/player/i_player_datasource.dart';
import 'package:random_command_game/infrastructure/datasource/player/sqflite/model/sql_player.dart';
import 'package:sqflite/sqflite.dart';

class PlayerDatasourceInSqflite implements IPlayerDatasource {
  /// テーブル名
  static const _tableName = 'player';

  @override
  Future<SQLPlayer> find(String id) async {
    try {
      final db = await _getDatabase();
      final result = await db.query(
        _tableName,
        where: '${SQLPlayer.keyId}=?',
        whereArgs: [id],
      );
      if (result.isEmpty) {
        throw NotFoundFailure();
      }
      final map = result.first;
      final data = SQLPlayer.fromMap(map);
      return data;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<SQLPlayer>> findAll() async {
    try {
      final db = await _getDatabase();
      final result =
          await db.query(_tableName, orderBy: SQLPlayer.keyCreatedAt);
      if (result.isEmpty) {
        throw NotFoundFailure();
      }
      return result.map((e) => SQLPlayer.fromMap(e)).toList();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> save(Player player) async {
    try {
      final db = await _getDatabase();
      final result = await db.query(
        _tableName,
        where: '${SQLPlayer.keyId}=? OR ${SQLPlayer.keyName}=?',
        whereArgs: [player.id, player.name],
      );
      if (result.isNotEmpty) {
        throw DuplicateFailure();
      }
      final map = SQLPlayer.convertToMap(player);
      await db.insert(_tableName, map);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> update(Player player) async {
    try {
      final db = await _getDatabase();
      final map = SQLPlayer.convertToMap(player);
      await db.update(
        _tableName,
        map,
        where: '${SQLPlayer.keyId}=?',
        whereArgs: [player.id],
      );
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> delete(String id) async {
    try {
      final db = await _getDatabase();
      await db.delete(
        _tableName,
        where: '${SQLPlayer.keyId}=?',
        whereArgs: [id],
      );
    } catch (e) {
      rethrow;
    }
  }

  /// データベース取得
  Future<Database> _getDatabase() async {
    try {
      final Database db = await openDatabase(
        join(await getDatabasesPath(), AppConfig.playerDBFileName),
        version: 1,
        onCreate: (db, version) async {
          await db.execute(
            '''
          CREATE TABLE $_tableName (
          ${SQLPlayer.keyId} TEXT PRIMARY KEY, 
          ${SQLPlayer.keyName} TEXT PRIMARY KEY, 
          ${SQLPlayer.keyIsSelected} INTEGER, 
          ${SQLPlayer.keyCreatedAt} INTEGER, 
          ${SQLPlayer.keyUpdatedAt} INTEGER, 
          )
          ''',
          );
        },
      );
      return db;
    } catch (e) {
      rethrow;
    }
  }
}
