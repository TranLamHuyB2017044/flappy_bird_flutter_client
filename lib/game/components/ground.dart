import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:flame/parallax.dart';
import 'package:flappy_bird_flutter_client/common/app_assets.dart';
import 'package:flappy_bird_flutter_client/game/flappy_game.dart';

import '../../core/config/app_config.dart';

class Ground extends ParallaxComponent<FlappyGame> {
  Ground();

  @override
  Future<void> onLoad() async {
    final ground = await Flame.images.load(AppAssets.base);

    parallax = Parallax(
      [
        ParallaxLayer(ParallaxImage(ground, fill: LayerFill.none)),
      ],
    );
  }

  @override
  void update(double dt) {
    parallax?.baseVelocity.x = AppConfig.gameSpeed;
    super.update(dt);
  }

}