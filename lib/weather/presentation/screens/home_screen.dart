import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/utils/size.dart';
import '../controller/weather_cubit.dart';
import '../controller/weather_states.dart';
import '../widgets/custom_colum.dart';
import '../widgets/custom_text.dart';
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
                SizedBox(height: height(context)*0.1,),
                CustomText(text: 'Cairo', fontFamily: 'SFPRODISPLAY', color: Colors.white, fontSize: 34),
                CustomText(text: '19°', fontFamily: 'SFPRODISPLAY', color: Colors.white, fontSize: 65,
                fontweight: FontWeight.w200),
                CustomText(text: 'Mostly Clear', fontFamily: 'SFPRODISPLAY', color: Colors.white12.withOpacity(.5), fontSize: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(text: 'H:24°', fontFamily: 'SFPRODISPLAY', color: Colors.white, fontSize: 20),
                    SizedBox(width: width(context)*0.05,),
                    CustomText(text: 'L:18°', fontFamily: 'SFPRODISPLAY', color: Colors.white, fontSize: 20),
                  ],
                ),
                SizedBox(height: height(context)*0.025,),
                Stack(
                  children: [
                    SizedBox(width: width(context),
                      height: height(context)*0.5,
                    ),
                    Image.asset('assets/images/house.png'),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        width: width(context),
                        height: height(context)*0.389,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white54),
                          color: const Color(0xff2E335A).withOpacity(.82),
                          borderRadius: const BorderRadius.only(topLeft: Radius.circular(38),topRight: Radius.circular(38))
                        ),
                        child:Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 5),
                              width: width(context)*0.18,
                              height: width(context)*0.015,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xff2E335A),
                              ),
                            ),
                            SizedBox(height: height(context)*0.015,),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: width(context)*0.05),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomText(text: 'Hourly Forecast', color: Colors.white60, fontSize: 17),
                                  CustomText(text: 'Weekly Forecast', color: Colors.white60, fontSize: 17),
                                ],
                              ),
                            ),
                            const Divider(
                              color:Colors.white54 ,
                              thickness: 1.5,
                            ),
                            SizedBox(
                              height: height(context)*0.3,
                              child: ListView.separated(
                                  itemCount: 10,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index){
                                return const CustomColumn();
                              }, separatorBuilder: (BuildContext context, int index) {
                                    return SizedBox(width: width(context)*0.025,);
                              },),
                            )
                          ],
                        ) ,
                      ),
                    )

                  ],
                ),

                Row(
                  children: [
                    SizedBox(width: width(context)*0.01,),
                  Image.asset('assets/images/List.png', width: width(context)*0.2,),
                  Stack(
                    children: [
                      Image.asset('assets/images/Rectangle.png', width: width(context)*0.55),
                      Positioned(
                          top: width(context)*0.0001,
                          right: width(context)*0.133,
                          child: Image.asset('assets/images/center.png', width: width(context)*0.25)),
                    ],
                  ),
                  Image.asset('assets/images/Map.png', width: width(context)*0.2,),
                  ],),



              ],
            ),
          ),
        );
        }));



  }
}
