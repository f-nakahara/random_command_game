import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_command_game/core/l10n/app_localization.dart';
import 'package:random_command_game/core/util/navigator_util.dart';
import 'package:random_command_game/presentation/view/common/text_form_dialog.dart';
import 'package:random_command_game/presentation/view/penalty_setting/widget/penalty_create_form/penalty_create_form_view_model.dart';

class PenaltyCreateForm extends HookConsumerWidget {
  const PenaltyCreateForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vm = ref.read(penaltyCreateFormViewModel.notifier);
    final controller = useTextEditingController();
    final localization = AppLocalization.of(context)!;
    final isEnable = ref.watch(penaltyCreateFormViewModel).isEnabled;
    return TextFormDialog(
      onSaved: isEnable
          ? () async {
              await vm.create(name: controller.text);
              NavigatorUtil.pop(context);
            }
          : null,
      title: localization.createTitle(localization.penalty),
      controller: controller,
      validator: (value) => vm.validate(value, localization),
      maxLength: vm.maxNameLength,
      onChanged: (value) => vm.onChanged(value, localization),
    );
  }
}
