import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_command_game/infrastructure/datasource/player/i_player_datasource.dart';
import 'package:random_command_game/infrastructure/datasource/player/sqflite/player_datasouce_in_sqflite.dart';

/// ローカル用データソース
final localPlayerDatasourceProvider = Provider<IPlayerDatasource>(
  (ref) => PlayerDatasourceInSqflite(),
);
