import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_command_game/infrastructure/datasource/player/player_datasouce_provider.dart';
import 'package:random_command_game/infrastructure/repository/player/player_repository.dart';

final playerRepositoryProvider = Provider(
  (ref) => PlayerRepository(
    localDatasource: ref.read(localPlayerDatasourceProvider),
  ),
);
