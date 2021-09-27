import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_command_game/core/constant/app_constant.dart';
import 'package:random_command_game/presentation/view/penalty_setting/widget/penalty_list/penalty_list_view_model.dart';
import 'package:random_command_game/presentation/view/penalty_setting/widget/penalty_list_item/penalty_list_item.dart';

class PenaltyList extends ConsumerWidget {
  const PenaltyList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncValue = ref.watch(penaltyListViewModel).state;
    return asyncValue.when(
      data: (data) {
        final states = data.penaltyStates;
        if (states.isEmpty) {
          return const SizedBox();
        }

        return ListView.builder(
          padding: const EdgeInsets.symmetric(
              horizontal: AppConstant.normalPaddingValue),
          itemCount: states.length,
          itemBuilder: (context, index) {
            final state = states[index];
            return PenaltyListItem(state);
          },
        );
      },
      loading: () => Container(),
      error: (error, stack) => Container(),
    );
  }
}
