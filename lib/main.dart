import 'package:flutter/material.dart';
import 'package:flutter_application_2/Whatsapp_UI/Components/New_TabBar.dart';
import 'package:flutter_application_2/Whatsapp_UI/Pages/Mobile_Page.dart';
import 'package:flutter_application_2/Whatsapp_UI/Pages/store.dart';
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
         brightness: Brightness.dark
         
         
      ),
        home:MobilePage(),
        debugShowCheckedModeBanner: false,

    );
  }
}


