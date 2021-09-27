import 'package:random_command_game/domain/entity/target.dart';
import 'package:random_command_game/domain/repository/i_target_repository.dart';
import 'package:random_command_game/infrastructure/datasource/target/i_target_datasource.dart';

class TargetRepository implements ITargetRepository {
  TargetRepository(this._localDatasource);

  final ITargetDatasource _localDatasource;

  @override
  Future<Target> find(String id) async {
    // TODO: implement find
    throw UnimplementedError();
  }

  @override
  Future<Target?> findByName(String name) {
    // TODO: implement findByName
    throw UnimplementedError();
  }

  @override
  Future<List<Target>> findAll() async {
    final result = await _localDatasource.findAll();
    final targets = result.map((e) => e.toEntity()).toList();
    return targets;
  }

  @override
  Future<void> save(Target target) async {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  Future<void> update(Target target) async {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Future<void> delete(Target id) async {
    // TODO: implement delete
    throw UnimplementedError();
  }
}
