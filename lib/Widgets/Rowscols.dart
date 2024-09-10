import 'package:flutter/material.dart';

class Rowscols extends StatelessWidget {
  const Rowscols({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Rows and Columns')),
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          color: Color.fromARGB(255, 20, 185, 47)
        ),
      ),
    ); 
  }
}