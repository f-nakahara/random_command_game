import 'package:random_command_game/domain/entity/target.dart';
import 'package:random_command_game/domain/repository/i_target_repository.dart';

class TargetRepository implements ITargetRepository {
  @override
  Future<Target> find(String id) async {
    // TODO: implement find
    throw UnimplementedError();
  }

  @override
  Future<List<Target>> findAll() async {
    // TODO: implement findAll
    throw UnimplementedError();
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
