import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flappy_bird_flutter_client/presentation/bloc/game_bloc.dart';
import 'package:flappy_bird_flutter_client/presentation/pages/game_over_page.dart';
import 'package:flappy_bird_flutter_client/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/di/injection.dart';
import 'game/flappy_game.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
  );
  await Flame.device.fullScreen();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final game = FlappyGame();

    return MaterialApp(
      title: 'Flappy Game',
      theme: ThemeData(fontFamily: 'GameFont'),
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (_) => GameBloc(),
        child: GameWidget(
          initialActiveOverlays: const [HomePage.routeId],
          game: game,
          overlayBuilderMap: {
            HomePage.routeId:
                (context, game) => HomePage(game: game as FlappyGame),
            GameOverPage.routeId:
                (context, game) => GameOverPage(game: game as FlappyGame),
          },
        ),
      ),
    );
  }
}
