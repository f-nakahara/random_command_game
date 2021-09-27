import 'package:path/path.dart';
import 'package:random_command_game/core/config/app_config.dart';
import 'package:random_command_game/core/failure/not_found_failure.dart';
import 'package:random_command_game/domain/entity/penalty.dart';
import 'package:random_command_game/infrastructure/datasource/penalty/i_penalty_datasource.dart';
import 'package:random_command_game/infrastructure/datasource/penalty/sqflite/model/sqf_penalty.dart';
import 'package:sqflite/sqflite.dart';

class PenaltyDatasourceInSqflite implements IPenaltyDatasource {
  /// テーブル名
  static const _tableName = 'penalty';

  @override
  Future<SQFPenalty> find(String id) async {
    try {
      final db = await _getDatabase();
      final result = await db.query(
        _tableName,
        where: '${SQFPenalty.keyId}=?',
        whereArgs: [id],
      );
      if (result.isEmpty) {
        throw NotFoundFailure();
      }
      final map = result.first;
      final data = SQFPenalty.fromMap(map);
      return data;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<SQFPenalty?> findByName(String name) async {
    try {
      final db = await _getDatabase();
      final result = await db.query(
        _tableName,
        where: '${SQFPenalty.keyName}=?',
        whereArgs: [name],
      );
      if (result.isNotEmpty) {
        final player = SQFPenalty.fromMap(result.first);
        return player;
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<SQFPenalty>> findAll() async {
    try {
      final db = await _getDatabase();
      final result =
          await db.query(_tableName, orderBy: SQFPenalty.keyCreatedAt);
      return result.map((e) => SQFPenalty.fromMap(e)).toList();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> save(Penalty penalty) async {
    try {
      final db = await _getDatabase();
      final map = SQFPenalty.convertToMap(penalty);
      await db.insert(_tableName, map);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> update(Penalty penalty) async {
    try {
      final db = await _getDatabase();
      final map = SQFPenalty.convertToMap(penalty);
      await db.update(
        _tableName,
        map,
        where: '${SQFPenalty.keyId}=?',
        whereArgs: [penalty.id],
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
        where: '${SQFPenalty.keyId}=?',
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
        join(await getDatabasesPath(), AppConfig.penaltyDBFileName),
        version: 1,
        onCreate: (db, version) async {
          await db.execute(
            '''
          CREATE TABLE $_tableName (
          ${SQFPenalty.keyId} TEXT PRIMARY KEY, 
          ${SQFPenalty.keyName} TEXT UNIQUE, 
          ${SQFPenalty.keyIsSelected} INTEGER, 
          ${SQFPenalty.keyCreatedAt} INTEGER, 
          ${SQFPenalty.keyUpdatedAt} INTEGER 
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
