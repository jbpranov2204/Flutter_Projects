import 'package:flutter/material.dart';
import 'package:flutter_application_2/Widgets/Button.dart';
import 'package:flutter_application_2/Widgets/Container_Sized.dart';
import 'package:flutter_application_2/Widgets/rowscols.dart';



void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      theme: ThemeData(
         scaffoldBackgroundColor: const Color.fromARGB(255, 135, 39, 57),
         
         
      ),
        home: ButtonWidget(),
        debugShowCheckedModeBanner: false,

    );
  }
}


