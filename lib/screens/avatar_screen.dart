import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: const Text('Avatars'),
       actions: [
        Container(
          margin: const EdgeInsets.only(right: 5) ,
          child: CircleAvatar(
            child: const Text('SL'),
            backgroundColor: Colors.indigo[900]
          ),
        )
       ],
      ),
      body: const Center(
         child:CircleAvatar(
          maxRadius: 150,
          backgroundImage: NetworkImage('https://studiosol-a.akamaihd.net/uploadfile/letras/fotos/2/c/1/9/2c192dc4d06895bda3f2190ff32a04ca.jpg')
         )
      ),
    );
  }
}