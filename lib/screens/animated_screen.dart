import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AnimatedScreen extends StatefulWidget {
   
  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {

  double _width = 50;
  double _height = 50;
  Color _color = Colors.indigo;
  BorderRadiusGeometry _borderRadiusGeometry = BorderRadius.circular(10);

  void changeShape()
  { 
    final random = Random();
    _width = random.nextInt(300).toDouble() + 70;
    _height = random.nextInt(300).toDouble() + 70;
    _color = Color.fromARGB(
      random.nextInt(255), 
      random.nextInt(255) ,
      random.nextInt(255),
      1
      );
    _borderRadiusGeometry = BorderRadius.circular(random.nextInt(100).toDouble() + 10);
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated container'),
      ),
      body: Center(
         child: AnimatedContainer(
          duration: const Duration( milliseconds: 400),
          curve: Curves.easeInOutCubic,
          width: _width,
          /// color: Colors.red,
          height: _height,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadiusGeometry
           ),
         ),
      ),
      
      floatingActionButton:  FloatingActionButton(
        child: const Icon( Icons.play_circle_outline, size: 35 ),
        onPressed: changeShape,
      ),
    );
  }
}