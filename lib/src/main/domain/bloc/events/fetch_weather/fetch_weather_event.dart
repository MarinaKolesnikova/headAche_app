import 'dart:async';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:migr_proj/src/shared/interfaces/i_bloc_view_model.dart';

class FetchWeatherEvent extends IBlocEvent<AttackState> {
  const FetchWeatherEvent({
    required this.onCompleted,
    required this.permissionDenied,
  });
  final VoidCallback onCompleted;
  final VoidCallback permissionDenied;
  @override
  Stream<AttackState> action(covariant AttackBloc bloc) async* {
    final state = bloc.state;
    yield state.copyWith(isLoading: true);
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        permissionDenied.call();
      }
    }
    final Position pos = await Geolocator.getCurrentPosition();
    final weather = await bloc.attackService.getForecastWeather(
      lon: pos.longitude.toString(),
      lat: pos.latitude.toString(),
    );
    final updatedModel = state.currentModel!.copyWith(weather: weather);
    yield state.copyWith(
      isLoading: false,
      currentModel: updatedModel,
    );
    onCompleted();
  }
}
