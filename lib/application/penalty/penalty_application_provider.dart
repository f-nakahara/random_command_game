import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_command_game/application/penalty/penalty_application.dart';
import 'package:random_command_game/infrastructure/repository/penalty/penalty_repository_provider.dart';

final penaltyApplicationProvider = Provider<PenaltyApplication>(
  (ref) => PenaltyApplication(
    repository: ref.read(penaltyRepositoryProvider),
  ),
);
