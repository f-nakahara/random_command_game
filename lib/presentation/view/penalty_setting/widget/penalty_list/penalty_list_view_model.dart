import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_command_game/presentation/controller/penalty_controller.dart';
import 'package:random_command_game/presentation/view/penalty_setting/widget/penalty_list/penalty_list_state.dart';

final penaltyListViewModel = Provider<PenaltyListViewModel>((ref) {
  final asyncValue = ref.watch(penaltyController);
  return asyncValue.when(
    data: (penalties) {
      final state = PenaltyListState.from(penalties);
      return PenaltyListViewModel(state: AsyncData(state));
    },
    loading: () {
      return PenaltyListViewModel(state: const AsyncLoading());
    },
    error: (error, stack) {
      return PenaltyListViewModel(state: AsyncError(error));
    },
  );
});

class PenaltyListViewModel {
  PenaltyListViewModel({required this.state});

  final AsyncValue<PenaltyListState> state;
}
