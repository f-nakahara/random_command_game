import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_command_game/infrastructure/datasource/penalty/i_penalty_datasource.dart';
import 'package:random_command_game/infrastructure/datasource/penalty/sqflite/penalty_datasource_in_sqflite.dart';

/// ローカル用データソース
final localPenaltyDatasourceProvider = Provider<IPenaltyDatasource>(
  (ref) => PenaltyDatasourceInSqflite(),
);
