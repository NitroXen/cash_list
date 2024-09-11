import 'package:cash_list/view/add_screen.dart';
import 'package:cash_list/view/edit_screen.dart';
import 'package:cash_list/view/main_screen.dart';
import 'package:cash_list/view/routes/router.dart';
import 'package:cash_list/view/shop_screen.dart';
import 'package:flutter/material.dart';

class RoutesGen {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routering.home:
        return MaterialPageRoute(builder: (context) => const MainScreen());
      case Routering.add:
        return MaterialPageRoute(builder: (context) => const AddScreen());
      case Routering.edit:
        return MaterialPageRoute(builder: (context) => const EditScreen());
      case Routering.shop:
        return MaterialPageRoute(builder: (context) => const ShopScreen());
      default:
        return MaterialPageRoute(builder: (context) => const MainScreen());
    }
  }
}
