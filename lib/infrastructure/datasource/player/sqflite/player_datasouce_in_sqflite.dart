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
    // TODO: implement find
    throw UnimplementedError();
  }

  @override
  Future<List<SQLPlayer>> findAll() async {
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
