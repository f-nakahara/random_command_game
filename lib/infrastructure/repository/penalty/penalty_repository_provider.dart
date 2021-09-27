import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_command_game/domain/repository/i_penalty_repository.dart';
import 'package:random_command_game/infrastructure/datasource/penalty/penalty_datasource_provider.dart';
import 'package:random_command_game/infrastructure/repository/penalty/penalty_repository.dart';

final penaltyRepositoryProvider = Provider<IPenaltyRepository>(
  (ref) => PenaltyRepository(
    localDatasource: ref.read(localPenaltyDatasourceProvider),
  ),
);
