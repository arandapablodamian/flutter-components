import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  
  final String imageUrl;
  final String? name; 

  const CustomCardType2({ 
    Key? key, 
    required this.imageUrl, 
    this.name 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
        ),
        elevation: 50,
        shadowColor: AppTheme.primary,
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            FadeInImage(
              image: NetworkImage(imageUrl),
              /// image: NetworkImage('https://images4.alphacoders.com/936/936378.jpg'),
              placeholder: AssetImage('assets/jar-loading.gif'),
              width: double.infinity,
              height: 260,
              fit: BoxFit.cover,
              fadeInDuration:  Duration(milliseconds: 300),

              ),
              if (name != null) 
                Container(
                  alignment: AlignmentDirectional.centerEnd,
                  padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
                  child: Text(name ?? 'Un hermoso espacio a la nada')
                )
              
              
              
          ],
        ),
    );
  }
}