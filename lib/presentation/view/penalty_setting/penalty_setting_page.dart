import 'package:flutter/material.dart';
import 'package:random_command_game/core/constant/app_constant.dart';
import 'package:random_command_game/core/l10n/app_localization.dart';
import 'package:random_command_game/presentation/view/common/add_explanation.dart';
import 'package:random_command_game/presentation/view/common/check_explanation.dart';
import 'package:random_command_game/presentation/view/penalty_setting/widget/penalty_create_button/penalty_create_button.dart';
import 'package:random_command_game/presentation/view/penalty_setting/widget/penalty_list/penalty_list.dart';

/// プレイヤー設定画面
class PenaltySettingPage extends StatelessWidget {
  const PenaltySettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalization.of(context)!;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(AppConstant.normalPaddingValue),
              child: Column(
                children: [
                  CheckExplanation(subject: localization.penalty),
                  const SizedBox(height: 5),
                  AddExplanation(subject: localization.penalty),
                ],
              ),
            ),
            const Expanded(child: PenaltyList()),
          ],
        ),
      ),
      floatingActionButton: const PenaltyCreateButton(),
    );
  }
}
