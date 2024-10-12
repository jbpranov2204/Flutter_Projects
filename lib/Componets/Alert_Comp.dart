import 'package:flutter/material.dart';
import 'package:flutter_application_2/Componets/Text_Field.dart';
import 'package:flutter_application_2/Widgets/Dismissible.dart';

class Alert_Comp extends StatelessWidget {
  Alert_Comp({super.key, required this.input});

  final String input;
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(input),
      content: Text_Field(hint_Text: 'Email', border_radius: 20, icondata: Icons.email, prefixiconcolor: Colors.red, controller: controller,),
      actions: [
        ElevatedButton(onPressed: (){
          Navigator.pop(context);
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(controller.text),
          action: SnackBarAction(label: 'ok', onPressed: (){
            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => const DismissibleWidget()));
          })));
          },
         child: Text('yes'))
      ],
    );
  }
}

