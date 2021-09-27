import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_command_game/core/constant/app_constant.dart';
import 'package:random_command_game/presentation/view/player_setting/widget/player_list/player_list_view_model.dart';
import 'package:random_command_game/presentation/view/player_setting/widget/player_list_item/player_list_item.dart';

class PlayerList extends ConsumerWidget {
  const PlayerList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValue = ref.watch(playerListViewModel).state;
    return asyncValue.when(
      data: (data) {
        final states = data.playerStates;
        if (states.isEmpty) {
          return const SizedBox();
        }

        return ListView.builder(
          padding: const EdgeInsets.symmetric(
              horizontal: AppConstant.normalPaddingValue),
          itemCount: states.length,
          itemBuilder: (context, index) {
            final state = states[index];
            return PlayerListItem(state);
          },
        );
      },
      loading: () => Container(),
      error: (error, stack) => Container(),
    );
  }
}
