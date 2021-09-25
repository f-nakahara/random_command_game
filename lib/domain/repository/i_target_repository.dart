import 'package:random_command_game/domain/entity/target.dart';

/// [Target] Repository Interface
abstract class ITargetRepository {
  /// ターゲットを取得
  Future<Target> find(String id);

  /// ターゲットを全件取得
  Future<List<Target>> findAll();

  /// ターゲットを保存
  Future<void> save(Target target);

  /// ターゲットを更新
  Future<void> update(Target target);

  /// ターゲットを削除
  Future<void> delete(Target id);
}
