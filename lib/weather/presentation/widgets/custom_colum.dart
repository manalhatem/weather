import 'package:flutter/material.dart';

import '../../../core/utils/size.dart';
import 'custom_text.dart';
class CustomColumn extends StatelessWidget {
  const CustomColumn({Key? key}) : super(key: key);

  // String hour;
  // String img;
  // String temp;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width(context)*0.24,
      height: height(context)*0.28,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white54),
          color: const Color(0xff48319D).withOpacity(.5),
          borderRadius: BorderRadius.circular(40)
      ),
      child: Column(
        children: [
          SizedBox(height: height(context)*0.028,),
          CustomText(text: '12 AM', fontFamily: 'SFPRODISPLAY', color: Colors.white, fontSize: 22),
          SizedBox(height: height(context)*0.01,),
          Image.asset('assets/images/Moon cloud mid rain.png', width: width(context)*0.22,),
          SizedBox(height: height(context)*0.008,),
          CustomText(text: '19°', fontFamily: 'SFPRODISPLAY', color: Colors.white, fontSize: 30,),

        ],
      ),

    );
  }
}
