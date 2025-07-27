import 'package:flame/collisions.dart';
import 'package:flame/components.dart';
import 'package:flame/effects.dart';
import 'package:flappy_bird_flutter_client/common/app_assets.dart';
import 'package:flappy_bird_flutter_client/core/config/app_config.dart';
import 'package:flappy_bird_flutter_client/core/enums/bird_enum.dart';
import 'package:flappy_bird_flutter_client/game/flappy_game.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';

class BirdComponent extends SpriteGroupComponent<BirdMovement>
    with HasGameReference<FlappyGame>, CollisionCallbacks {
  BirdComponent();

  @override
  Future<void> onLoad() async {
    size = Vector2(50, 40);

    final birdMidFlap = await game.images.load(AppAssets.bluebirdMidFlap);
    final birdUpFlap = await game.images.load(AppAssets.bluebirdUpFlap);
    final birdDownFlap = await game.images.load(AppAssets.bluebirdDownFlap);

    sprites = {
      BirdMovement.middle: Sprite(birdMidFlap),
      BirdMovement.up: Sprite(birdUpFlap),
      BirdMovement.down: Sprite(birdDownFlap),
    };

    final middlePosition = game.size.y / 2 - size.y / 2;
    position = Vector2(50, middlePosition);

    current = BirdMovement.middle;
    add(CircleHitbox());
    await super.onLoad();
  }

  @override
  void update(double dt) {
    position.y += AppConfig.birdVelocity * dt;
    super.update(dt);
  }

  void fly() {
    add(
      MoveByEffect(
        Vector2(0, AppConfig.gravity),
        EffectController(duration: 0.2, curve: Curves.decelerate),
        onComplete: () => current = BirdMovement.down,
      ),
    );
    current = BirdMovement.up;
  }

  @override
  void onCollisionStart(
    Set<Vector2> intersectionPoints,
    PositionComponent other,
  ) {
    super.onCollisionStart(intersectionPoints, other);
    gameOver();
  }

  // void reset() {
  //   position = Vector2(50, gameRef.size.y / 2 - size.y / 2);
  //   // score = 0;
  // }

  void gameOver() {
    // FlameAudio.play(Assets.collision);
    // game.isHit = true;
    game.overlays.add(AppConfig.gameOverPage);
    game.pauseEngine();
  }
}
