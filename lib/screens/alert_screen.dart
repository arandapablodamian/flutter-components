import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIOS( BuildContext context){ 
    showCupertinoDialog(
      barrierDismissible: true,
      context: context, 
      builder: (context) {
        return CupertinoAlertDialog(
          title: const Text('Titulo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Este es el contenido de una alerta IOS'),
              SizedBox( height: 10),
              FlutterLogo( size:100)
            ],
            
          ),
          actions: [
            TextButton
            (
              onPressed: () => { Navigator.pop(context)}, 
              child: const Text('Cancelar')
            ),
            TextButton
            (
              onPressed: () => { Navigator.pop(context)}, 
              child: const Text('ok')
            )
          ],
        );
      }
      );
  }
  void displayDialog(BuildContext context)
  {
    showDialog(
      barrierDismissible: false,
      context: context, 
      builder: (context) { 
        return AlertDialog( 
          elevation: 5,
          title: const Text('Titulo'),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Este es el contenido de una alerta'),
              SizedBox( height: 10),
              FlutterLogo( size:100)
            ],
          ),
          actions: [
            TextButton
            (
              onPressed: () => { Navigator.pop(context)}, 
              child: const Text('Cancelar')
            )
          ],
        );
      }
      );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            /// child: Text('AlertScreen'),
        child: ElevatedButton(
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Mostrar alerta', style: TextStyle(fontSize: 16)),
          ),
          onPressed: () => 
          Platform.isAndroid 
          ? displayDialog(context)
          : displayDialogIOS(context),
        )),
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.close),
            onPressed: () {
              Navigator.pop(context);
            }));
  }
}
