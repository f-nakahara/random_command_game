import 'package:flutter/material.dart';
import 'package:random_command_game/core/l10n/app_localizations.dart';

class CheckExplanation extends StatelessWidget {
  const CheckExplanation({
    Key? key,
    required this.subject,
  }) : super(key: key);

  final String subject;

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context)!;
    return SizedBox(
      width: double.infinity,
      child: Text(
        localization.checkExplanation(subject),
        style: const TextStyle(
          fontSize: 15,
        ),
        textAlign: TextAlign.start,
      ),
    );
  }
}
