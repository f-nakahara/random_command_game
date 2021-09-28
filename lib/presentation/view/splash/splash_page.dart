import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:random_command_game/presentation/view/home/home_page.dart';
import 'package:random_command_game/presentation/view/splash/splash_view_model.dart';

class SplashPage extends ConsumerWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.read(splashViewModel.notifier);
    return Scaffold(
      body: FutureBuilder(
        future: state.init(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return const HomePage();
          }
          return Text('$runtimeType');
        },
      ),
    );
  }
}
