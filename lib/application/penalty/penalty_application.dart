import 'package:random_command_game/core/failure/duplicate_failure.dart';
import 'package:random_command_game/domain/entity/penalty.dart';
import 'package:random_command_game/domain/repository/i_penalty_repository.dart';
import 'package:uuid/uuid.dart';

class PenaltyApplication {
  PenaltyApplication({required IPenaltyRepository repository})
      : _repository = repository;
  final IPenaltyRepository _repository;

  /// 全てのペナルティーを取得する
  Future<List<Penalty>> getAllPenaltyList() async {
    final penalties = await _repository.findAll();
    return penalties;
  }

  /// ペナルティーを作成する
  Future<Penalty> createPenalty({required String name}) async {
    final isDuplicated = await _isDuplicated(name: name);
    if (isDuplicated) {
      throw DuplicateFailure();
    } else {
      final id = const Uuid().v4();
      final date = DateTime.now();
      final penalty = Penalty(
        id: id,
        name: name,
        isSelected: true,
        createdAt: date,
        updatedAt: date,
      );
      await _repository.save(penalty);
      final result = await _repository.find(id);
      return result;
    }
  }

  /// ペナルティーを更新する
  Future<Penalty> updatePenalty(String id, {required bool? isSelected}) async {
    final oldPenalty = await _repository.find(id);
    final newPenalty = Penalty(
      id: id,
      name: oldPenalty.name,
      isSelected: isSelected ?? oldPenalty.isSelected,
      createdAt: oldPenalty.createdAt,
      updatedAt: oldPenalty.updatedAt,
    );
    await _repository.update(newPenalty);
    return newPenalty;
  }

  /// ペナルティーを削除する
  Future<void> deletePenalty(String id) async {
    await _repository.delete(id);
  }

  /// 同じ名前のペナルティーが既に存在しているか確認
  Future<bool> _isDuplicated({required String name}) async {
    final penalty = await _repository.findByName(name);
    return penalty != null;
  }
}
