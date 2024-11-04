import 'package:flutter/material.dart';
import 'package:flutter_application_2/Wrap_UI.dart';






void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      theme: ThemeData(
         brightness: Brightness.light
         
         
      ),
        home:WrapWidget(),
        debugShowCheckedModeBanner: false,

    );
  }
}


