import 'package:flutter/material.dart';
import 'package:random_command_game/app.dart';

/// メイン関数
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const App());
}
