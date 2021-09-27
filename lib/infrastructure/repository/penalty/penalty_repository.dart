import 'package:random_command_game/domain/entity/penalty.dart';
import 'package:random_command_game/domain/repository/i_penalty_repository.dart';
import 'package:random_command_game/infrastructure/datasource/penalty/i_penalty_datasource.dart';

class PenaltyRepository implements IPenaltyRepository {
  PenaltyRepository({
    required IPenaltyDatasource localDatasource,
  }) : _localDatasource = localDatasource;

  final IPenaltyDatasource _localDatasource;
  @override
  Future<Penalty> find(String id) async {
    try {
      final data = await _localDatasource.find(id);
      final penalty = data.toEntity();
      return penalty;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<Penalty?> findByName(String name) async {
    final result = await _localDatasource.findByName(name);
    if (result != null) {
      final penalty = result.toEntity();
      return penalty;
    }
  }

  @override
  Future<List<Penalty>> findAll() async {
    try {
      final data = await _localDatasource.findAll();
      return data.map((e) => e.toEntity()).toList();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> save(Penalty penalty) async {
    try {
      await _localDatasource.save(penalty);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> update(Penalty penalty) async {
    try {
      await _localDatasource.update(penalty);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> delete(String id) async {
    try {
      await _localDatasource.delete(id);
    } catch (e) {
      rethrow;
    }
  }
}
