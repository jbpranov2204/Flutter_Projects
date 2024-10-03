import 'package:flutter/material.dart';
import 'package:flutter_application_2/Widgets/Bottom_Navigation.dart';




void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      theme: ThemeData(
         scaffoldBackgroundColor: const Color.fromARGB(255, 249, 249, 249),
         
         
      ),
        home:Bottom_Navigation(),
        debugShowCheckedModeBanner: false,

    );
  }
}


