import 'package:flutter/material.dart';

import '../../weather/presentation/screens/detail_city.dart';
import '../../weather/presentation/screens/home_screen.dart';
import '../../weather/presentation/screens/search.dart';
import 'routes.dart';
Route<dynamic> onGenerate(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.home:
      return MaterialPageRoute(builder: (context) => const HomeScreen());

    case AppRoutes.details:
      return MaterialPageRoute(
        builder: (context) => const DetailsCity(),);
    case AppRoutes.search:
      return MaterialPageRoute(
        builder: (context) => const SearchScreen(),);

    default:
      return MaterialPageRoute(builder: ((context) => const HomeScreen()));
  }
}