import 'package:random_command_game/infrastructure/datasource/target/i_target_datasource.dart';
import 'package:random_command_game/infrastructure/datasource/target/momory/model/m_target.dart';

class TargetDatasourceInMemory implements ITargetDatasource {
  @override
  Future<MTarget> find(String id) {
    // TODO: implement find
    throw UnimplementedError();
  }

  @override
  Future<MTarget?> findByName(String name) {
    // TODO: implement findByName
    throw UnimplementedError();
  }

  @override
  Future<List<MTarget>> findAll() async {
    final date = DateTime.now().millisecondsSinceEpoch;
    final result = [
      MTarget(
        id: '1',
        name: 'だけが',
        isSelected: 1,
        createdAt: date,
        updatedAt: date,
      ),
      MTarget(
        id: '2',
        name: 'の右の人が',
        isSelected: 1,
        createdAt: date,
        updatedAt: date,
      ),
      MTarget(
        id: '3',
        name: 'の左の人が',
        isSelected: 1,
        createdAt: date,
        updatedAt: date,
      ),
      MTarget(
        id: '4',
        name: '以外の全員が',
        isSelected: 1,
        createdAt: date,
        updatedAt: date,
      ),
    ];
    return result;
  }

  @override
  Future<void> save(MTarget target) {
    // TODO: implement save
    throw UnimplementedError();
  }

  @override
  Future<void> update(MTarget target) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Future<void> delete(MTarget id) {
    // TODO: implement delete
    throw UnimplementedError();
  }
}
