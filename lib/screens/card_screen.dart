import 'package:flutter/material.dart';

import '../widgets/widgets.dart';


class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title :const  Text('Card Widget')
      ),
      /// body: Center(
      ///    child: Text('CardScreen'),
      /// ),
      /// 
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox( height: 10,),
          CustomCardType2(name: 'Paisaje',imageUrl: 'https://images4.alphacoders.com/936/936378.jpg',),
          SizedBox( height: 10,),
          CustomCardType2(name: 'DBZ COVER',imageUrl: 'https://fondosmil.com/fondo/22798.jpg',),
          SizedBox( height: 10,),
          CustomCardType2(name: 'DBZ INTRO',imageUrl: 'https://as01.epimg.net/meristation/imagenes/2020/01/31/noticias/1580466171_086441_1580466283_noticia_normal.jpg',),
          SizedBox( height: 100,),
        ],)
    );
  }
}

