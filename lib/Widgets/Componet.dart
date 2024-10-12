import 'package:flutter/material.dart';
import 'package:flutter_application_2/Componets/Alert_Comp.dart';


class ComponentWidget extends StatelessWidget {
  const ComponentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Text Field'),),
        body: ElevatedButton(onPressed: (){
             showDialog(context: (context), builder:(context){
              return Alert_Comp(input:'input');
             });
        }, child: Text('Press here')),
        
    );
  }
}