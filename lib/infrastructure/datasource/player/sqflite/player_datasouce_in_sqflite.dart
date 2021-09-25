import 'package:path/path.dart';
import 'package:random_command_game/core/config/app_config.dart';
import 'package:random_command_game/infrastructure/datasource/player/i_player_datasource.dart';
import 'package:random_command_game/infrastructure/datasource/player/sqflite/model/sql_player.dart';
import 'package:sqflite/sqflite.dart';

class PlayerDatasourceInSqflite implements IPlayerDatasource {
  static const _tableName = 'player';

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
