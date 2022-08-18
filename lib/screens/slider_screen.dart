import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue = 100;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders & checks'),
      ),
      body: Column(
        children: [
          Slider.adaptive(
            value:_sliderValue,
            activeColor: AppTheme.primary,
            divisions: 10,
            min:50,
            max:400,
            onChanged: _sliderEnabled ? (value){
              _sliderValue = value;
              setState(() {});
            } : null,
          ),
          //CheckBoxListTile, CheckBox
          SwitchListTile(
            activeColor: AppTheme.primary,
            title: const Text('Habilitar slider'),
            value: _sliderEnabled,
             onChanged: (value){
              _sliderEnabled = value ?? true;
              setState(() {
                
              });
             }
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage('https://static.wikia.nocookie.net/marveldatabase/images/b/b8/Immortal_Hulk_Vol_1_46.jpg/revision/latest/scale-to-width-down/325?cb=20210502045454') ,
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          ),
          const SizedBox(height: 100,)
        ]
        )
    );
  }
}