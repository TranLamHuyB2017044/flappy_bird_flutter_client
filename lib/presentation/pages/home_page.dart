import 'package:flappy_bird_flutter_client/common/app_assets.dart';
import 'package:flappy_bird_flutter_client/core/config/app_config.dart';
import 'package:flappy_bird_flutter_client/game/flappy_game.dart';
import 'package:flappy_bird_flutter_client/presentation/bloc/game_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  static const String routeId = AppConfig.homePage;
  final FlappyGame game;
  const HomePage({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    game.pauseEngine();
    return BlocBuilder<GameBloc, GameState>(
      builder: (context, state) {
        return Scaffold(
          body: GestureDetector(
            onTap: (){
              context.read<GameBloc>().add(const GameEvent.started());
              game.overlays.remove(AppConfig.homePage);
              game.resumeEngine();
            },
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppAssets.menu),
                  fit: BoxFit.cover,
                ),
              ),
              child: Image.asset(AppAssets.message),
            ),
          ),
        );
      }
    );
  }
}
