import 'package:flutter/material.dart';
import 'package:random_command_game/core/util/navigator_util.dart';
import 'package:random_command_game/presentation/view/game_setting/game_setting_page.dart';
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
              Text('使い方'),
              Text(''),
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
                      fontSize: 15.sp,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                height: 8.h,
                child: OutlinedButton(
                  onPressed: () {
                    NavigatorUtil.push(
                      context,
                      page: const GameSettingPage(),
                    );
                  },
                  child: Text(
                    'ゲーム設定',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.sp,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
