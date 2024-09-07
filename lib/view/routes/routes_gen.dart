import 'package:cash_list/view/add_screen.dart';
import 'package:cash_list/view/main_screen.dart';
import 'package:flutter/material.dart';

class RoutesGen {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => const MainScreen());
      case '/add':
        return MaterialPageRoute(builder: (context) => const AddScreen());
      case '/edit':
      case '/shop':
      default:
        return MaterialPageRoute(builder: (context) => const MainScreen());
    }
  }
}
