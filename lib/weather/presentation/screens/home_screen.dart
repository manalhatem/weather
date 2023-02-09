import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/utils/size.dart';
import '../controller/weather_cubit.dart';
import '../controller/weather_states.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
        create: (context)=> WeatherCubit(),
        child: BlocBuilder<WeatherCubit,WeatherStates>(builder: (context,state){
         final cubit =WeatherCubit.get(context);
        return Scaffold(
          body: Container(
            width: width(context),
            height: height(context),
            decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/background.png'), fit: BoxFit.fill)
            ),
            child: Column(
              children: [


              ],
            ),
          ),
        );
        }));



  }
}
