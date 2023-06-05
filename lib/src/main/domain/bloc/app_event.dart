part of 'app_bloc.dart';

abstract class AppEvent extends IBlocEvent<AppState> {
  const AppEvent();

  @override
  Stream<AppState> action(covariant AppBloc bloc);
}
