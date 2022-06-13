import 'package:fl_components/router/app_routes.dart';
import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        home: const HomeScreen(),
        initialRoute: AppRoutes.initialRoute,
        routes: AppRoutes.getAppRoutes(),
        theme: AppTheme.lightTheme
      );   
  }
}
