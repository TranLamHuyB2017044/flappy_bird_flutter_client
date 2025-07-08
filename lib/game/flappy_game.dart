import 'package:flame/game.dart';
import 'package:flappy_bird_flutter_client/game/components/background.dart';
import 'components/bird_component.dart';

class FlappyGame extends FlameGame {
  @override
  Future<void> onLoad() async {
    await add(Background());
  }
}