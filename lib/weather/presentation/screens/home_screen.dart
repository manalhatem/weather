import 'package:flutter/material.dart';

import '../../../core/utils/size.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
  }
}
