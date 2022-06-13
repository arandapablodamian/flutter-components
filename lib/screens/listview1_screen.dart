import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  
  final options = const['Megaman','Metal gear','Super smash','Final Fantasy'];

  const Listview1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview Tipo 1')
      ),
      body:  ListView(
        children: [
          ...options.map(
            (game) => ListTile(
              title: Text(game),
              trailing: const Icon(Icons.arrow_forward_ios_outlined),
            )
          ).toList()
        ]
         /// children:
         /// const [
         ///  Text('Listview1Screen'),
         ///  ListTile(
         ///    leading: Icon(Icons.access_time_sharp),
         ///    title: Text('hola aplicacion')
         ///  )
         /// ] 
      ),
    );
  }
}