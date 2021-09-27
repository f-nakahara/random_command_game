import 'package:flutter/material.dart';
import 'package:random_command_game/presentation/view/common/create_button.dart';
import 'package:random_command_game/presentation/view/penalty_setting/widget/penalty_create_form/penalty_create_form.dart';

class PenaltyCreateButton extends StatelessWidget {
  const PenaltyCreateButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CreateButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) {
            return const PenaltyCreateForm();
          },
        );
      },
    );
  }
}
