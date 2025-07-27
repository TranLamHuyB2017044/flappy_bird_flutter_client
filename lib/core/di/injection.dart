import 'package:flame_audio/flame_audio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'injection.config.dart';
import 'package:flappy_bird_flutter_client/common/app_assets.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies() async {
  getIt.init();

  final flyingPool = await FlameAudio.createPool(
    AppAssets.flyingAudio,
    maxPlayers: 2,
  );
  getIt.registerSingleton<AudioPool>(flyingPool);
}
