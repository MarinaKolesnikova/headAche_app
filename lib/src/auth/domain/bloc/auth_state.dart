part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    Token? token,
    @Default(false) bool isLoading,
  }) = _AuthState;

  factory AuthState.initial() => AuthState();
}
