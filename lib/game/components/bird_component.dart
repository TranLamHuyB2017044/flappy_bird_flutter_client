import 'package:flame/components.dart';
import 'package:flappy_bird_flutter_client/common/app_assets.dart';

class BirdComponent extends SpriteComponent {
  @override
  Future<void> onLoad() async {
    sprite = await Sprite.load(AppAssets.imgBird);
    size = Vector2(50, 50);
    position = Vector2(100, 200);
  }
}
