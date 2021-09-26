import 'package:flutter/material.dart';
import 'package:random_command_game/core/l10n/app_localizations.dart';
import 'package:random_command_game/core/util/navigator_util.dart';

class TextFormDialog extends StatelessWidget {
  const TextFormDialog({
    Key? key,
    required this.onSaved,
    required this.title,
    required this.controller,
  }) : super(key: key);

  final Function() onSaved;
  final String title;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context)!;
    return AlertDialog(
      title: Text(title),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextFormField(
            controller: controller,
          ),
        ],
      ),
      actions: [
        ElevatedButton(
          onPressed: onSaved,
          child: Text(localization.create),
        ),
        OutlinedButton(
          onPressed: () {
            NavigatorUtil.pop(context);
          },
          child: Text(localization.cancel),
        ),
      ],
    );
  }
}
