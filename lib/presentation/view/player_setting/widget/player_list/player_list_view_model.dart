import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_command_game/presentation/controller/player_controller.dart';
import 'package:random_command_game/presentation/view/player_setting/widget/player_list/player_list_state.dart';

final playerListViewModel = Provider<PlayerListViewModel>((ref) {
  final asyncValue = ref.watch(playerController);
  return asyncValue.when(
    data: (players) {
      final state = PlayerListState.from(players);
      return PlayerListViewModel(state: AsyncData(state));
    },
    loading: () {
      return PlayerListViewModel(state: const AsyncLoading());
    },
    error: (error, stack) {
      return PlayerListViewModel(state: AsyncError(error));
    },
  );
});

class PlayerListViewModel {
  PlayerListViewModel({required this.state});

  final AsyncValue<PlayerListState> state;
}
