import 'package:flutter/material.dart';


class NewPage extends StatelessWidget {
  NewPage({super.key, required this.name, required this.desc, required this.image});

  final String name;
  final String desc;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Column(
         children: [
          Image.network(image),          
          Text(desc),
       ], 
      )
    );
  }
}