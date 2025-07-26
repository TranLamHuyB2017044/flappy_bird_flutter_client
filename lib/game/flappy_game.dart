import 'package:flame/game.dart';
import 'package:flappy_bird_flutter_client/core/config/app_config.dart';
import 'package:flappy_bird_flutter_client/game/components/background.dart';
import 'package:flappy_bird_flutter_client/game/components/ground.dart';
import 'components/bird_component.dart';
import 'components/pipe_group.dart';
import 'package:flame/components.dart';

class FlappyGame extends FlameGame {
  late BirdComponent bird;
  late Timer interval;

  @override
  Future<void> onLoad() async {
    await addAll([Background(), Ground(), bird = BirdComponent(), PipeGroup()]);
    interval = Timer(AppConfig.pipeInterval, repeat: true);
    interval.onTick = () => add(PipeGroup());
  }

  @override
  void update(double dt) {
    super.update(dt);
    interval.update(dt);
  }
}
