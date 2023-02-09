import '../entities/weather.dart';
import '../repository/base_weather_repository.dart';

class GitWeatherByCityName{
 final BaseWeatherRepository repository;

 GitWeatherByCityName(this.repository);

 Future<Weather?> execute(String name) async{
   return await repository.getWeatherByCityName(name);
 }
}