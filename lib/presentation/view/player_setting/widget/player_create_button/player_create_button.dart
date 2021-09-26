import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_command_game/core/l10n/app_localizations.dart';
import 'package:random_command_game/presentation/view/common/text_form_dialog.dart';
import 'package:random_command_game/presentation/view/player_setting/widget/player_create_button/player_create_button_view_model.dart';

class PlayerCreateButton extends HookConsumerWidget {
  const PlayerCreateButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vm = ref.read(playerCreateButtonViewModel);
    final controller = useTextEditingController();
    final localization = AppLocalizations.of(context)!;
    return FloatingActionButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) {
            return TextFormDialog(
              onSaved: () async {
                final name = controller.text;
                await vm.create(name: name);
              },
              title: localization.createTitle(localization.player),
              controller: controller,
            );
          },
        );
      },
      child: const Icon(Icons.add),
    );
  }
}
