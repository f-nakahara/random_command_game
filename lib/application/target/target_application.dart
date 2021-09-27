import 'package:random_command_game/domain/entity/target.dart';
import 'package:random_command_game/domain/repository/i_target_repository.dart';

class TargetApplication {
  TargetApplication({required ITargetRepository repository})
      : _repository = repository;
  final ITargetRepository _repository;

  /// 全てのターゲットを取得する
  Future<List<Target>> getAllPlayerList() async {
    final targets = await _repository.findAll();
    return targets;
  }
}
