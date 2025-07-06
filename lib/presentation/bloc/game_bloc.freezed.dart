// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GameEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GameEvent()';
}


}

/// @nodoc
class $GameEventCopyWith<$Res>  {
$GameEventCopyWith(GameEvent _, $Res Function(GameEvent) __);
}


/// Adds pattern-matching-related methods to [GameEvent].
extension GameEventPatterns on GameEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( StartedEvent value)?  started,TResult Function( JumpEvent value)?  jump,TResult Function( HitObstacleEvent value)?  hitObstacle,TResult Function( ScoredEvent value)?  scored,TResult Function( ResetEvent value)?  reset,required TResult orElse(),}){
final _that = this;
switch (_that) {
case StartedEvent() when started != null:
return started(_that);case JumpEvent() when jump != null:
return jump(_that);case HitObstacleEvent() when hitObstacle != null:
return hitObstacle(_that);case ScoredEvent() when scored != null:
return scored(_that);case ResetEvent() when reset != null:
return reset(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( StartedEvent value)  started,required TResult Function( JumpEvent value)  jump,required TResult Function( HitObstacleEvent value)  hitObstacle,required TResult Function( ScoredEvent value)  scored,required TResult Function( ResetEvent value)  reset,}){
final _that = this;
switch (_that) {
case StartedEvent():
return started(_that);case JumpEvent():
return jump(_that);case HitObstacleEvent():
return hitObstacle(_that);case ScoredEvent():
return scored(_that);case ResetEvent():
return reset(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( StartedEvent value)?  started,TResult? Function( JumpEvent value)?  jump,TResult? Function( HitObstacleEvent value)?  hitObstacle,TResult? Function( ScoredEvent value)?  scored,TResult? Function( ResetEvent value)?  reset,}){
final _that = this;
switch (_that) {
case StartedEvent() when started != null:
return started(_that);case JumpEvent() when jump != null:
return jump(_that);case HitObstacleEvent() when hitObstacle != null:
return hitObstacle(_that);case ScoredEvent() when scored != null:
return scored(_that);case ResetEvent() when reset != null:
return reset(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function()?  jump,TResult Function()?  hitObstacle,TResult Function()?  scored,TResult Function()?  reset,required TResult orElse(),}) {final _that = this;
switch (_that) {
case StartedEvent() when started != null:
return started();case JumpEvent() when jump != null:
return jump();case HitObstacleEvent() when hitObstacle != null:
return hitObstacle();case ScoredEvent() when scored != null:
return scored();case ResetEvent() when reset != null:
return reset();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function()  jump,required TResult Function()  hitObstacle,required TResult Function()  scored,required TResult Function()  reset,}) {final _that = this;
switch (_that) {
case StartedEvent():
return started();case JumpEvent():
return jump();case HitObstacleEvent():
return hitObstacle();case ScoredEvent():
return scored();case ResetEvent():
return reset();case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function()?  jump,TResult? Function()?  hitObstacle,TResult? Function()?  scored,TResult? Function()?  reset,}) {final _that = this;
switch (_that) {
case StartedEvent() when started != null:
return started();case JumpEvent() when jump != null:
return jump();case HitObstacleEvent() when hitObstacle != null:
return hitObstacle();case ScoredEvent() when scored != null:
return scored();case ResetEvent() when reset != null:
return reset();case _:
  return null;

}
}

}

/// @nodoc


class StartedEvent implements GameEvent {
  const StartedEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StartedEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GameEvent.started()';
}


}




/// @nodoc


class JumpEvent implements GameEvent {
  const JumpEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is JumpEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GameEvent.jump()';
}


}




/// @nodoc


class HitObstacleEvent implements GameEvent {
  const HitObstacleEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HitObstacleEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GameEvent.hitObstacle()';
}


}




/// @nodoc


class ScoredEvent implements GameEvent {
  const ScoredEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScoredEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GameEvent.scored()';
}


}




/// @nodoc


class ResetEvent implements GameEvent {
  const ResetEvent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResetEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GameEvent.reset()';
}


}




/// @nodoc
mixin _$GameState {

 double get velocity; double get position; int get score; bool get isGameOver;
/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameStateCopyWith<GameState> get copyWith => _$GameStateCopyWithImpl<GameState>(this as GameState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameState&&(identical(other.velocity, velocity) || other.velocity == velocity)&&(identical(other.position, position) || other.position == position)&&(identical(other.score, score) || other.score == score)&&(identical(other.isGameOver, isGameOver) || other.isGameOver == isGameOver));
}


@override
int get hashCode => Object.hash(runtimeType,velocity,position,score,isGameOver);

@override
String toString() {
  return 'GameState(velocity: $velocity, position: $position, score: $score, isGameOver: $isGameOver)';
}


}

/// @nodoc
abstract mixin class $GameStateCopyWith<$Res>  {
  factory $GameStateCopyWith(GameState value, $Res Function(GameState) _then) = _$GameStateCopyWithImpl;
@useResult
$Res call({
 double velocity, double position, int score, bool isGameOver
});




}
/// @nodoc
class _$GameStateCopyWithImpl<$Res>
    implements $GameStateCopyWith<$Res> {
  _$GameStateCopyWithImpl(this._self, this._then);

  final GameState _self;
  final $Res Function(GameState) _then;

/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? velocity = null,Object? position = null,Object? score = null,Object? isGameOver = null,}) {
  return _then(_self.copyWith(
velocity: null == velocity ? _self.velocity : velocity // ignore: cast_nullable_to_non_nullable
as double,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as double,score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int,isGameOver: null == isGameOver ? _self.isGameOver : isGameOver // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [GameState].
extension GameStatePatterns on GameState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GameState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GameState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GameState value)  $default,){
final _that = this;
switch (_that) {
case _GameState():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GameState value)?  $default,){
final _that = this;
switch (_that) {
case _GameState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double velocity,  double position,  int score,  bool isGameOver)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GameState() when $default != null:
return $default(_that.velocity,_that.position,_that.score,_that.isGameOver);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double velocity,  double position,  int score,  bool isGameOver)  $default,) {final _that = this;
switch (_that) {
case _GameState():
return $default(_that.velocity,_that.position,_that.score,_that.isGameOver);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double velocity,  double position,  int score,  bool isGameOver)?  $default,) {final _that = this;
switch (_that) {
case _GameState() when $default != null:
return $default(_that.velocity,_that.position,_that.score,_that.isGameOver);case _:
  return null;

}
}

}

/// @nodoc


class _GameState implements GameState {
  const _GameState({required this.velocity, required this.position, required this.score, required this.isGameOver});
  

@override final  double velocity;
@override final  double position;
@override final  int score;
@override final  bool isGameOver;

/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameStateCopyWith<_GameState> get copyWith => __$GameStateCopyWithImpl<_GameState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameState&&(identical(other.velocity, velocity) || other.velocity == velocity)&&(identical(other.position, position) || other.position == position)&&(identical(other.score, score) || other.score == score)&&(identical(other.isGameOver, isGameOver) || other.isGameOver == isGameOver));
}


@override
int get hashCode => Object.hash(runtimeType,velocity,position,score,isGameOver);

@override
String toString() {
  return 'GameState(velocity: $velocity, position: $position, score: $score, isGameOver: $isGameOver)';
}


}

/// @nodoc
abstract mixin class _$GameStateCopyWith<$Res> implements $GameStateCopyWith<$Res> {
  factory _$GameStateCopyWith(_GameState value, $Res Function(_GameState) _then) = __$GameStateCopyWithImpl;
@override @useResult
$Res call({
 double velocity, double position, int score, bool isGameOver
});




}
/// @nodoc
class __$GameStateCopyWithImpl<$Res>
    implements _$GameStateCopyWith<$Res> {
  __$GameStateCopyWithImpl(this._self, this._then);

  final _GameState _self;
  final $Res Function(_GameState) _then;

/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? velocity = null,Object? position = null,Object? score = null,Object? isGameOver = null,}) {
  return _then(_GameState(
velocity: null == velocity ? _self.velocity : velocity // ignore: cast_nullable_to_non_nullable
as double,position: null == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as double,score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int,isGameOver: null == isGameOver ? _self.isGameOver : isGameOver // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
