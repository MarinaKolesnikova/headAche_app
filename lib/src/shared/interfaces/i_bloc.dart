import 'package:dio/dio.dart';
import 'package:migr_proj/src/shared/services/dio_error_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:logging/src/logger.dart';

import './i_bloc_event.dart';

export './i_bloc_event.dart';

abstract class IBloc<State, Event extends IBlocEvent<State>> extends Bloc<Event, State> {
  IBloc(State initialState) : super(initialState);

  Logger get logger => Logger('[$runtimeType]');

  @override
  Stream<State> mapEventToState(Event event) async* {
    logger.info('event ${event.runtimeType}');
    yield* event.action(this);
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    if (error is DioError) {
      final response = error.response;
      DioErrorService.getError(response);
    } else {
      super.onError(error, stackTrace);
    }
  }
}
