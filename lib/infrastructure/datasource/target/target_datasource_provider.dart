import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_command_game/infrastructure/datasource/target/i_target_datasource.dart';
import 'package:random_command_game/infrastructure/datasource/target/momory/target_datasource_in_memory.dart';

final localTargetDatasource = Provider<ITargetDatasource>(
  (ref) => TargetDatasourceInMemory(),
);
