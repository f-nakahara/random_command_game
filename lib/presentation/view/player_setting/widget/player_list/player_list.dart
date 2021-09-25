import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_command_game/presentation/view/player_setting/widget/player_list/player_list_view_model.dart';
import 'package:random_command_game/presentation/view/player_setting/widget/player_list_item/player_list_item.dart';

class PlayerList extends ConsumerWidget {
  const PlayerList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValue = ref.watch(playerListViewModel).players;
    return asyncValue.when(
      data: (data) {
        if (data.isEmpty) {
          return const SizedBox();
        }

        return ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            final player = data[index];
            return PlayerListItem(player);
          },
        );
      },
      loading: () => Container(),
      error: (error, stack) => Container(),
    );
  }
}
