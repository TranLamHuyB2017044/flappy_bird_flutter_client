import 'dart:math';

import 'package:flame/components.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:flappy_bird_flutter_client/common/app_assets.dart';
import 'package:flappy_bird_flutter_client/core/enums/pip_enum.dart';
import 'package:flappy_bird_flutter_client/game/components/pipe_component.dart';

import '../../core/config/app_config.dart';
import '../flappy_game.dart';

class PipeGroup extends PositionComponent with HasGameReference<FlappyGame> {
  PipeGroup();

  final _random = Random();

  @override
  Future<void> onLoad() async {
    position.x = game.size.x;
    final heightMinusGround = game.size.y - AppConfig.groundHeight;
    final spacing = 100 + _random.nextDouble() * (heightMinusGround / 4);
    final centerY =
        spacing + _random.nextDouble() * (heightMinusGround - spacing);
    addAll([
      PipeComponent(
        height: centerY - spacing / 2,
        pipePosition: PipePosition.top,
      ),
      PipeComponent(
        height: heightMinusGround - (centerY + spacing / 2),
        pipePosition: PipePosition.bottom,
      ),
    ]);
    await super.onLoad();
  }

  void updateScore() {
    game.bird.score += 1;
    FlameAudio.play(AppAssets.pointAudio);
  }

  @override
  void update(double dt) {
    super.update(dt);
    position.x -= AppConfig.gameSpeed * dt;
    if (position.x < -10) {
      removeFromParent();
      updateScore();
    }

    if (game.isHit) {
      removeFromParent();
      game.isHit = false;
    }
  }
}
