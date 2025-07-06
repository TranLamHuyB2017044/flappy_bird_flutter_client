import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_event.dart';
part 'game_state.dart';
part 'game_bloc.freezed.dart';

@injectable
class GameBloc extends Bloc<GameEvent, GameState> {
  GameBloc() : super(GameState.initial()) {
    on<StartedEvent>(_onStarted);
    on<JumpEvent>(_onJump);
    on<ScoredEvent>(_onScored);
    on<HitObstacleEvent>(_onHitObstacle);
    on<ResetEvent>(_onReset);
  }

  void _onStarted(StartedEvent event, Emitter<GameState> emit) {
    emit(GameState.initial());
  }

  void _onJump(JumpEvent event, Emitter<GameState> emit) {
    emit(state.copyWith(velocity: -300));
  }

  void _onScored(ScoredEvent event, Emitter<GameState> emit) {
    emit(state.copyWith(score: state.score + 1));
  }

  void _onHitObstacle(HitObstacleEvent event, Emitter<GameState> emit) {
    emit(state.copyWith(isGameOver: true));
  }

  void _onReset(ResetEvent event, Emitter<GameState> emit) {
    emit(GameState.initial());
  }
}
