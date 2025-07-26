import 'package:flame/components.dart';
import 'package:flappy_bird_flutter_client/common/app_assets.dart';
import 'package:flappy_bird_flutter_client/core/enums/bird_enum.dart';
import 'package:flappy_bird_flutter_client/game/flappy_game.dart';

class BirdComponent extends SpriteGroupComponent<BirdMovement>
    with HasGameReference<FlappyGame> {
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

    await super.onLoad();
  }
}
