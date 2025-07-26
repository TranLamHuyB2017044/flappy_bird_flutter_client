import 'dart:math';

import 'package:flame/components.dart';
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

  @override
  void update(double dt) {
    super.update(dt);
    position.x -= AppConfig.gameSpeed * dt;
  }
}
