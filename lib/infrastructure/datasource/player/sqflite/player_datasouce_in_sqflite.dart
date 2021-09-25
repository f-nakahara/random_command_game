import 'package:path/path.dart';
import 'package:random_command_game/core/config/app_config.dart';
import 'package:random_command_game/domain/entity/player.dart';
import 'package:random_command_game/infrastructure/datasource/player/i_player_datasource.dart';
import 'package:random_command_game/infrastructure/datasource/player/sqflite/model/sql_player.dart';
import 'package:sqflite/sqflite.dart';

class PlayerDatasourceInSqflite implements IPlayerDatasource {
  static const _tableName = 'player';

  @override
  Future<SQLPlayer> find(String id) async {
    final db = await _getDatabase();
    final result = await db.query(
      _tableName,
      where: '${SQLPlayer.keyId}=?',
      whereArgs: [id],
    );
    if (result.isEmpty) {
      throw Exception();
    }
    final map = result.first;
    final data = SQLPlayer.fromMap(map);
    return data;
  }

  @override
  Future<List<SQLPlayer>> findAll() async {
    final db = await _getDatabase();
    final result = await db.query(_tableName, orderBy: SQLPlayer.keyCreatedAt);
    if (result.isEmpty) {
      throw Exception();
    }
    return result.map((e) => SQLPlayer.fromMap(e)).toList();
  }

  @override
  Future<void> save(Player player) async {
    final db = await _getDatabase();
    final map = SQLPlayer.convertToMap(player);
    await db.insert(_tableName, map);
  }

  @override
  Future<void> update(Player player) async {
    final db = await _getDatabase();
    final map = SQLPlayer.convertToMap(player);
    await db.update(
      _tableName,
      map,
      where: '${SQLPlayer.keyId}=?',
      whereArgs: [player.id],
    );
  }

  @override
  Future<void> delete(String id) async {
    final db = await _getDatabase();
    await db.delete(
      _tableName,
      where: '${SQLPlayer.keyId}=?',
      whereArgs: [id],
    );
  }

  Future<Database> _getDatabase() async {
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
  }
}
