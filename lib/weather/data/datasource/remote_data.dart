import 'package:dio/dio.dart';

import '../../../core/utils/constants.dart';
import '../model/weather_model.dart';

abstract class BaseRemoteDataSource{
  Future<WeatherModel?> getWeatherByName(String name);
}
class RemoteDataSource implements BaseRemoteDataSource{
  @override
  Future<WeatherModel?> getWeatherByName(String name)async {
    try {
      var response = await Dio().get('${ConstantsApp.baseUrl}/weather?q=$name&appid=${ConstantsApp.appKey}');
      print(response);
      return WeatherModel.fromJson(response.data);
    } catch (e) {
      print(e);
      return null;
    }

  }

}