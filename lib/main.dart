import 'package:flutter/material.dart';
import 'package:flutter_application_2/Widgets/Alert.dart';

import 'package:flutter_application_2/Widgets/Dismissible.dart';


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
        home:AlertWidget(),
        debugShowCheckedModeBanner: false,

    );
  }
}


