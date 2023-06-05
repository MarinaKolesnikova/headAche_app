class PredictionWeather {
  final bool hasRisk;
  final DateTime date;
  final ShortWeatherModel nextWeather;
  final WeatherModel prevWeather;
  final bool? cameTrue;

  PredictionWeather({
    required this.hasRisk,
    required this.date,
    required this.nextWeather,
    required this.prevWeather,
     this.cameTrue,
  });
}

class ShortWeatherModel {
  final double humidity;
  final double temperature;
  final double pressure;

  ShortWeatherModel({
    required this.humidity,
    required this.temperature,
    required this.pressure,
  });
}

class WeatherModel {
  final double humidity;
  final double temp;

  WeatherModel({
    required this.humidity,
    required this.temp,
  });
}
