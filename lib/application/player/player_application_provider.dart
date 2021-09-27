import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_command_game/application/player/player_application.dart';
import 'package:random_command_game/infrastructure/repository/player/player_repository_provider.dart';

final playerApplicationProvider = Provider<PlayerApplication>(
  (ref) => PlayerApplication(
    repository: ref.read(playerRepositoryProvider),
  ),
);
