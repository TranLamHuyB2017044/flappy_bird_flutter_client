import 'package:flappy_bird_flutter_client/common/app_assets.dart';
import 'package:flappy_bird_flutter_client/core/config/app_config.dart';
import 'package:flappy_bird_flutter_client/game/flappy_game.dart';
import 'package:flappy_bird_flutter_client/presentation/bloc/game_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../common/app_colors.dart';

class GameOverPage extends StatelessWidget {
  static const String routeId = AppConfig.gameOverPage;
  final FlappyGame game;
  const GameOverPage({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    void onRestart() {
      context.read<GameBloc>().add(const GameEvent.reset());
      game.overlays.remove(AppConfig.gameOverPage);
      game.resumeEngine();
      game.bird.reset();
    }

    return BlocBuilder<GameBloc, GameState>(
      builder: (context, state) {
        return Material(
          color: AppColors.overlayColor,
          child: Center(
            child: Column(
              spacing: 20,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Score ${game.bird.score}',
                  style: const TextStyle(fontSize: 60, color: Colors.white),
                ),
                Image.asset(AppAssets.gameOver),
                ElevatedButton(
                  onPressed: onRestart,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.appButtonColor,
                  ),
                  child: const Text(
                    'Restart',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
