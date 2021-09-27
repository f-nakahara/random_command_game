import 'package:random_command_game/infrastructure/datasource/target/momory/model/m_target.dart';

abstract class ITargetDatasource {
  /// ターゲットの取得
  Future<MTarget> find(String id);

  /// ターゲットの取得（名前検索）
  Future<MTarget?> findByName(String name);

  /// ターゲット一覧の取得
  Future<List<MTarget>> findAll();

  /// ターゲットの保存
  Future<void> save(MTarget target);

  /// ターゲットの更新
  Future<void> update(MTarget target);

  /// ターゲットの削除
  Future<void> delete(MTarget id);
}
