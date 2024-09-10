import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Button'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center ,
          children: [
            TextButton(
              onPressed: (){}, 
              child: Text('press',
              style: TextStyle(fontSize: 100),)
              )
           
          ],
        ),
      ),
    );
  }
}