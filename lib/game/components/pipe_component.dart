import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flappy_bird_flutter_client/common/app_assets.dart';
import 'package:flappy_bird_flutter_client/core/config/app_config.dart';
import 'package:flappy_bird_flutter_client/core/enums/pip_enum.dart';
import 'package:flappy_bird_flutter_client/game/flappy_game.dart';

class PipeComponent extends SpriteComponent with HasGameReference<FlappyGame> {
  PipeComponent({required this.height, required this.pipePosition});
  @override
  final double height;
  final PipePosition pipePosition;
  @override
  Future<void> onLoad() async {
    final pipe = await game.images.load(AppAssets.pipeGreen);
    final pipeRotated = await game.images.load(AppAssets.pipeRotate);
    size = Vector2(50, height);
    await super.onLoad();

    switch (pipePosition) {
      case PipePosition.top:
        position.y = 0;
        sprite = Sprite(pipeRotated);
        break;
      case PipePosition.bottom:
        position.y = game.size.y - size.y - AppConfig.groundHeight;
        sprite = Sprite(pipe);
        break;
    }
    add(RectangleHitbox());
  }

  @override
  void update(double dt) {
    super.update(dt);
  }
}
