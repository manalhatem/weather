import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'weather_states.dart';


class WeatherCubit extends Cubit<WeatherStates>{
  WeatherCubit() : super(InitialWeatherState());
  static WeatherCubit get(context)=> BlocProvider.of(context);





}