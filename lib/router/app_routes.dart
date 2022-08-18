import 'package:fl_components/screens/animated_screen.dart';
import 'package:fl_components/screens/avatar_screen.dart';
import 'package:flutter/material.dart';

import '../models/menu_option.dart';
import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    //TODO: BORRARHOME
    MenuOption(route: 'listview1', name: 'Listview tipo 1', icon: Icons.home , screen: const Listview1Screen()),
    MenuOption(route: 'listview2', name: 'Listview tipo 2', icon: Icons.home , screen: const Listview2Screen()),
    MenuOption(route: 'alert', name: 'Alertas - Alerts', icon: Icons.bus_alert , screen: const AlertScreen()),
    MenuOption(route: 'card', name: 'Tarjetas - Cards', icon: Icons.card_giftcard , screen: const CardScreen()),
    MenuOption(route: 'avatar', name: 'Circle Avatar', icon: Icons.supervised_user_circle_outlined , screen: const AvatarScreen()),
    MenuOption(route: 'animated', name: 'Animated Container', icon: Icons.play_arrow_outlined , screen: const AnimatedScreen()),
    MenuOption(route: 'inputs', name: 'Text Inputs', icon: Icons.input_rounded , screen: const InputsScreen()),
    MenuOption(route: 'sliders', name: 'Sliders && Screens', icon: Icons.slideshow_sharp, screen: const SliderScreen()),
    MenuOption(route: 'listviewbuilder', name: 'Infinite scroll and pull to refresh', icon: Icons.build_circle, screen: const ListViewBuilderScreen()),


  ];

    static  Map<String, Widget Function(BuildContext) > getAppRoutes() {
      Map<String, Widget Function(BuildContext) > appRoutes =  {};

      appRoutes.addAll({ 'home' : (BuildContext context) => const HomeScreen()});
  
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
