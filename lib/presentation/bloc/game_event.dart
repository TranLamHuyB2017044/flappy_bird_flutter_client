
part of 'game_bloc.dart';

@freezed
class GameEvent with _$GameEvent {
  const factory GameEvent.started() = StartedEvent;
  const factory GameEvent.jump() = JumpEvent;
  const factory GameEvent.hitObstacle() = HitObstacleEvent;
  const factory GameEvent.scored() = ScoredEvent;
  const factory GameEvent.reset() = ResetEvent;
}
