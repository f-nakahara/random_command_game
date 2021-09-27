import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_command_game/domain/repository/i_target_repository.dart';
import 'package:random_command_game/infrastructure/datasource/target/target_datasource_provider.dart';
import 'package:random_command_game/infrastructure/repository/target/target_repository.dart';

final targetRepositoryProvider = Provider<ITargetRepository>(
  (ref) => TargetRepository(
    ref.read(localTargetDatasource),
  ),
);
