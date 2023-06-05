import 'dart:async';
import 'package:migr_proj/src/main/entity/model/prediction_model/prediction_model.dart';
import 'package:migr_proj/src/predictions/domain/events/fetch_daily_weather_event.dart';
import 'package:migr_proj/src/predictions/domain/prediction_bloc.dart';
import 'package:migr_proj/src/predictions/entities/prediction_weather/prediction_weather.dart ';
import 'package:migr_proj/src/predictions/entities/short_weather_model/short_weather_model.da rt';
import 'package:flutter/material.dart';
import 'package:migr_proj/src/shared/interfaces/i_bloc.dart';

class CreatePredictionEvent extends IBlocEvent<PredictionState> {
  const CreatePredictionEvent({
    required this.onCompleted,
    required this.permissionDenied,
  });
  final VoidCallback onCompleted;
  final VoidCallback permissionDenied;
  @override
  Stream<PredictionState> action(covariant PredictionBloc bloc) async* {
    bloc.add(
      FetchDailyWeatherEvent(
        onCompleted: () async* {
          final weatherModel = bloc.state.weather;
          if (weatherModel != null) {
            final previosWeather = bloc.state.currentPredictions.nextWeather;
            RiskPrediction newPrediction = RiskPrediction.noRisk;
            int riskCounter = 0;
            if (760 - weatherModel.pressure > 6) {
              riskCounter++;
            }
            if ((weatherModel.temp.morn - previosWeather.temperature).abs() > 5) {
              riskCounter++;
            }
            if (weatherModel.temp.morn < -10) {
              riskCounter++;
            }
            if (weatherModel.temp.morn > -13.3 && weatherModel.humidity > 67.7) {
              riskCounter++;
            }
            if (riskCounter == 1) {
              newPrediction = RiskPrediction.risk;
            } else if (riskCounter > 1) {
              newPrediction = RiskPrediction.increasedRisk;
            }
            final newPredictionModel = PredictionWeather(
              hasRisk: newPrediction,
              date: DateTime.now(),
              nextWeather: ShortWeatherModel(
                humidity: weatherModel.humidity,
                temperature: weatherModel.temp.morn,
                pressure: weatherModel.pressure,
              ),
              prevWeather: previosWeather,
              cameTrue: null,
            );
            final List<PredictionWeather> list = bloc.state.predictionList..add(newPredictionModel);
            bloc.predictionService.postPredictions(list);
            yield bloc.state.copyWith(
              currentPredictions: newPredictionModel,
              predictionList: list,
            );
          }
        },
      ),
    );
  }
}
