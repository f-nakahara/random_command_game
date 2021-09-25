import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:random_command_game/app.dart';

/// メイン関数
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  EquatableConfig.stringify = true;
  runApp(const App());
}
