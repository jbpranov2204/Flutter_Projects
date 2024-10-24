import 'package:flutter/material.dart';
import 'package:flutter_application_2/Widgets/Card.dart';
import 'package:flutter_application_2/Widgets/bot_nav.dart';
import 'package:flutter_application_2/Widgets/dry_fruit.dart';
import 'package:flutter_application_2/Widgets/fruits.dart';
import 'package:flutter_application_2/Widgets/veggie_store.dart';






void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      theme: ThemeData(
         brightness: Brightness.dark
         
         
      ),
        home:BottomNav(),
        debugShowCheckedModeBanner: false,

    );
  }
}


