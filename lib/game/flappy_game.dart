import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:flame/text.dart';
import 'package:flappy_bird_flutter_client/core/config/app_config.dart';
import 'package:flappy_bird_flutter_client/game/components/background.dart';
import 'package:flappy_bird_flutter_client/game/components/ground.dart';
import 'package:flutter/material.dart';
import 'components/bird_component.dart';
import 'components/pipe_group.dart';
import 'package:flame/components.dart';

class FlappyGame extends FlameGame with TapDetector, HasCollisionDetection {
  late BirdComponent bird;
  late Timer interval;
  bool isHit = false;
  late TextComponent score;

  @override
  Future<void> onLoad() async {
    await addAll([
      Background(),
      score = buildScore(),
      Ground(),
      bird = BirdComponent(),
    ]);
    interval = Timer(AppConfig.pipeInterval, repeat: true);
    interval.onTick = () => add(PipeGroup());
  }

  TextComponent buildScore() {
    return TextComponent(
      position: Vector2(size.x / 2, size.y / 2 * 0.2),
      anchor: Anchor.center,
      textRenderer: TextPaint(
        style: const TextStyle(
          fontSize: 40,
          fontFamily: 'GameFont',
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  @override
  void update(double dt) {
    super.update(dt);
    score.text = 'Score: ${bird.score}';
    interval.update(dt);
  }

  @override
  void onTap() {
    bird.fly();
    super.onTap();
  }
}
