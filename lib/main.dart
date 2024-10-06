import 'package:flutter/material.dart';
import 'package:flutter_application_2/Widgets/Forms.dart';
import 'package:flutter_application_2/Widgets/TabBar.dart';



void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      theme: ThemeData(
         scaffoldBackgroundColor: const Color.fromARGB(255, 249, 249, 249),
         
         
      ),
        home:FormWidget(),
        debugShowCheckedModeBanner: false,

    );
  }
}


