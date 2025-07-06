part of 'game_bloc.dart';

@freezed
sealed class GameState with _$GameState {
  const factory GameState({
    required double velocity,
    required double position,
    required int score,
    required bool isGameOver,
  }) = _GameState;

  factory GameState.initial() => const GameState(
    velocity: 0,
    position: 0,
    score: 0,
    isGameOver: false,
  );
}
