import 'package:flutter/material.dart';

import '../models/menu_option.dart';
import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    //TODO: BORRARHOME
    MenuOption(route: 'home', name: 'Home Screen', icon: Icons.home , screen: const HomeScreen()),
    MenuOption(route: 'listview1', name: 'Listview tipo 1', icon: Icons.home , screen: const Listview1Screen()),
    MenuOption(route: 'listview2', name: 'Listview tipo 2', icon: Icons.home , screen: const Listview2Screen()),
    MenuOption(route: 'alert', name: 'Alertas - Alerts', icon: Icons.bus_alert , screen: const AlertScreen()),
    MenuOption(route: 'card', name: 'Tarjetas - Cards', icon: Icons.card_giftcard , screen: const CardScreen()),
  ];

    static  Map<String, Widget Function(BuildContext) > getAppRoutes() {
      Map<String, Widget Function(BuildContext) > appRoutes =  {};

        for (final option in menuOptions) {
          appRoutes.addAll({ option.route : (BuildContext context) => option.screen});
        }
      return appRoutes;
    }
  /// static Map<String, Widget Function(BuildContext)> routes = {
  ///   'home': (BuildContext context) => const HomeScreen(),
  ///   'listview1': (BuildContext context) => const Listview1Screen(),
  ///   'listview2': (BuildContext context) => const Listview2Screen(),
  ///   'alert': (BuildContext context) => const AlertScreen(),
  ///   'card': (BuildContext context) => const CardScreen(),
  /// };
}
