import 'package:flame/components.dart';

class BirdComponent extends SpriteComponent {
  @override
  Future<void> onLoad() async {
    sprite = await Sprite.load('img_bird.png');
    size = Vector2(50, 50);
    position = Vector2(100, 200);
  }
}
