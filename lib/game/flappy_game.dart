import 'package:flame/game.dart';
import 'components/bird_component.dart';

class FlappyGame extends FlameGame {
  @override
  Future<void> onLoad() async {
    await add(BirdComponent());
  }
}