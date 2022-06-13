import 'package:fl_components/models/menu_option.dart';
import 'package:fl_components/router/app_routes.dart';
import 'package:fl_components/screens/listview1_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
        appBar: AppBar(
          title: Text('Componenes en flutter'),
          elevation: 0,
        ),

        /// body: const Center(
        ///    child: Text('HomeScreen'),
        /// ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                title: Text(menuOptions[index].name),
                leading:  Icon(menuOptions[index].icon, color: Colors.indigo),
                onTap: () {
                  // el context sabe todo el arbol de widget 
                  /// final route = MaterialPageRoute(builder: (context) => const Listview1Screen());
                  //el push replacement destruye todo el camino de rutas previos ( no va a mostrar la flechita de volver)
                  /// Navigator.pushReplacement(context, route );
                  Navigator.pushNamed(context,menuOptions[index].route);
                }),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: menuOptions.length));
  }
}
