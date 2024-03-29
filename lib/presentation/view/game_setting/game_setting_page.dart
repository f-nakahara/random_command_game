import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_command_game/core/l10n/app_localization.dart';
import 'package:random_command_game/presentation/view/penalty_setting/penalty_setting_page.dart';
import 'package:random_command_game/presentation/view/player_setting/player_setting_page.dart';

class GameSettingPage extends HookConsumerWidget {
  const GameSettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = useTabController(initialLength: 2);
    final localization = AppLocalization.of(context)!;
    return Scaffold(
      appBar: AppBar(
        title: Text(localization.gameSettingTitle),
        bottom: _buildTabBar(controller, localization),
      ),
      body: _buildBody(controller),
    );
  }

  TabBarView _buildBody(TabController controller) {
    return TabBarView(
      controller: controller,
      children: const [
        PlayerSettingPage(),
        PenaltySettingPage(),
      ],
    );
  }

  TabBar _buildTabBar(TabController controller, AppLocalization localization) {
    return TabBar(
      controller: controller,
      tabs: [
        Tab(text: localization.player),
        Tab(text: localization.penalty),
      ],
    );
  }
}
