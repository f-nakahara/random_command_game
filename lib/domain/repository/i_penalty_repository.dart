import 'package:random_command_game/domain/entity/penalty.dart';

/// [Penalty] Repository Interface
abstract class IPenaltyRepository {
  /// ペナルティーを取得
  Future<Penalty> find(String id);

  /// ペナルティーを取得（名前検索）
  Future<Penalty?> findByName(String name);

  /// ペナルティーを全件取得
  Future<List<Penalty>> findAll();

  /// ペナルティーを保存
  Future<void> save(Penalty penalty);

  /// ペナルティーを更新
  Future<void> update(Penalty penalty);

  /// ペナルティーを削除
  Future<void> delete(String id);
}
