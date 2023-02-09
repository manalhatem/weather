import 'package:weatherr_ap/weather/domain/entities/weather.dart';
import 'package:weatherr_ap/weather/domain/repository/base_weather_repository.dart';

import '../datasource/remote_data.dart';

class WeatherRepository implements BaseWeatherRepository{
  BaseRemoteDataSource baseRemoteDataSource;

  WeatherRepository(this.baseRemoteDataSource);

  @override
  Future<Weather?> getWeatherByCityName(String name)async {
   return await baseRemoteDataSource.getWeatherByName(name);
  }
  
}