import 'package:flutter/material.dart';
import 'package:flutter_application_2/Widgets/Button.dart';
import 'package:flutter_application_2/Widgets/Container_Sized.dart';
import 'package:flutter_application_2/Widgets/List_and_Grid.dart';
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
         scaffoldBackgroundColor: const Color.fromARGB(255, 66, 164, 65),
         
         
      ),
        home: ListAndGrid(),
        debugShowCheckedModeBanner: false,

    );
  }
}


