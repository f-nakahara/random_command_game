import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_command_game/core/l10n/app_localizations.dart';
import 'package:random_command_game/core/util/navigator_util.dart';
import 'package:random_command_game/presentation/view/common/text_form_dialog.dart';
import 'package:random_command_game/presentation/view/player_setting/widget/player_create_form/player_create_form_view_model.dart';

class PlayerCreateForm extends HookConsumerWidget {
  const PlayerCreateForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vm = ref.read(playerCreateFormViewModel);
    final controller = useTextEditingController();
    final localization = AppLocalizations.of(context)!;
    return TextFormDialog(
      onSaved: () async {
        await vm.create(name: controller.text);
        NavigatorUtil.pop(context);
      },
      title: localization.createTitle(localization.player),
      controller: controller,
    );
  }
}