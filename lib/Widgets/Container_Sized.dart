import 'package:flutter/material.dart';

class Container_Sized extends StatelessWidget {
   const Container_Sized({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Container_SizedBox'),
      
      ),
      body:const SizedBox(height: 50,width: 55,child: Text('heybud'),),
    
    );
  }
}
