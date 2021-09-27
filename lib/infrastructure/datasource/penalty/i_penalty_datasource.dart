import 'package:random_command_game/domain/entity/penalty.dart';
import 'package:random_command_game/infrastructure/datasource/penalty/sqflite/model/sqf_penalty.dart';

abstract class IPenaltyDatasource {
  /// ペナルティーの取得
  Future<SQFPenalty> find(String id);

  /// ペナルティーの取得（名前検索）
  Future<SQFPenalty?> findByName(String name);

  /// ペナルティー一覧の取得
  Future<List<SQFPenalty>> findAll();

  /// ペナルティーの保存
  Future<void> save(Penalty penalty);

  /// ペナルティーの更新
  Future<void> update(Penalty penalty);

  /// ペナルティーの削除
  Future<void> delete(String id);
}
