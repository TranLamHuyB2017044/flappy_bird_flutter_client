import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:flappy_bird_flutter_client/common/app_assets.dart';

import '../flappy_game.dart';

class Background extends SpriteComponent with HasGameReference<FlappyGame> {
  Background() : super(size: Vector2.all(800));

  @override
  Future<void> onLoad() async {
    final background = await Flame.images.load(AppAssets.backgroundNight);
    size = game.size;
    sprite = Sprite(background);
  }
}
