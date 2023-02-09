import 'package:flutter/material.dart';
import 'weather/data/datasource/remote_data.dart';
import 'weather/data/repository/weather_repository.dart';
import 'weather/domain/entities/weather.dart';
import 'weather/domain/repository/base_weather_repository.dart';
import 'weather/domain/usecases/git_weather_by_city_name.dart';
import 'weather/presentation/screens/home_screen.dart';

void main() async{
  BaseRemoteDataSource baseRemoteDataSource=RemoteDataSource();
  BaseWeatherRepository baseRepository=WeatherRepository(baseRemoteDataSource);
  Weather? weather=await GitWeatherByCityName(baseRepository).execute("egypt");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

