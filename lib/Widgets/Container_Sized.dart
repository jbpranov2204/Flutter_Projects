import 'package:flutter/material.dart';

class Container_Sized extends StatelessWidget {
   Container_Sized({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Container_SizedBox'),
      
      ),
      body:SizedBox(height: 50,width: 55,child: Text('heybud'),),
    
    );
  }
}