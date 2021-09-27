import 'package:flutter/material.dart';
import 'package:random_command_game/core/util/navigator_util.dart';
import 'package:random_command_game/presentation/view/penalty_setting/penalty_setting_page.dart';
import 'package:random_command_game/presentation/view/player_setting/player_setting_page.dart';
import 'package:sizer/sizer.dart';

/// ホーム画面
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: double.infinity,
                height: 8.h,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(),
                  child: Text(
                    'はじめる',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.sp,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      NavigatorUtil.push(
                        context,
                        page: const PlayerSettingPage(),
                      );
                    },
                    child: Text('プレイヤー'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      NavigatorUtil.push(
                        context,
                        page: const PenaltySettingPage(),
                      );
                    },
                    child: Text('罰ゲーム'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
