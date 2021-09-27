import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_command_game/application/penalty/penalty_application.dart';
import 'package:random_command_game/application/penalty/penalty_application_controller.dart';
import 'package:random_command_game/domain/entity/penalty.dart';

final penaltyController =
    StateNotifierProvider<PenaltyController, AsyncValue<List<Penalty>>>(
  (ref) => PenaltyController(
    app: ref.read(penaltyApplicationProvider),
  ),
);

class PenaltyController extends StateNotifier<AsyncValue<List<Penalty>>> {
  PenaltyController({required PenaltyApplication app})
      : _app = app,
        super(const AsyncLoading()) {
    _fetch();
  }

  final PenaltyApplication _app;

  /// 同期
  Future<void> _fetch() async {
    final penalties = await _app.getAllPenaltyList();
    state = AsyncData(penalties);
  }

  /// ペナルティー削除
  Future<void> deletePenalty(String id) async {
    try {
      await _app.deletePenalty(id);
      final penalties = state.data!.value;
      penalties.removeWhere((element) => element.id == id);
      state = AsyncData(penalties);
    } catch (e) {
      rethrow;
    }
  }

  /// ペナルティー作成
  Future<void> createPenalty({required String name}) async {
    final penalty = await _app.createPenalty(name: name);
    final penalties = state.data!.value;
    penalties.add(penalty);
    state = AsyncData(penalties);
  }

  /// ペナルティー更新
  Future<void> updatePenalty(String id, {bool? isSelected}) async {
    final penalty = await _app.updatePenalty(id, isSelected: isSelected);
    final penalties = state.data!.value;
    final index = penalties.indexWhere((element) => element == penalty);
    if (index != -1) {
      penalties[index] = penalty;
      state = AsyncData(penalties);
    }
  }
}
