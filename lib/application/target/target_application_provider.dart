import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_command_game/application/target/target_application.dart';
import 'package:random_command_game/infrastructure/repository/target/target_repository_provider.dart';

final targetApplicationProvider = Provider<TargetApplication>(
  (ref) => TargetApplication(
    repository: ref.read(targetRepositoryProvider),
  ),
);
