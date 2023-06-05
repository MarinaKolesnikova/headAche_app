import 'package:dio/dio.dart';

import 'package:migr_proj/src/shared/interfaces/i_base_api.dart';

import 'package:retrofit/http.dart';

part 'app_api.g.dart';

@RestApi()
abstract class AppApi extends IBaseApi {
  factory AppApi(Dio dio, {String baseUrl}) = _AppApi;
}
