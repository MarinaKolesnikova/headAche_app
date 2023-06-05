import 'package:dio/dio.dart';
import 'package:migr_proj/src/shared/interfaces/i_base_api.dart';
import 'package:retrofit/http.dart';
part 'weather_api.g.dart';

@RestApi()
abstract class WeatherApi extends IBaseApi {
  factory WeatherApi(Dio dio, {String? baseUrl}) = _WeatherApi;
  @GET('/weather?lat={lat}&lon={lon}&appid={keyAPI}')
  Future<WeatherDTO> getCurrentWeather({
    @Path() required String lon,
    @Path() required String lat,
    @Path() required String keyAPI,
  });
  @GET('/onecall?lat={lat}&lon={lon}&exclude=current,minutely,hourly&appid={keyAPI}')
  Future<ForecastDTO> getForecastWeather({
    @Path() required String lon,
    @Path() required String lat,
    @Path() required String keyAPI,
  });
}
