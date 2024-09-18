import 'package:flutter/material.dart';

class DismissibleWidget extends StatefulWidget {
  const DismissibleWidget({super.key});

  @override
  State<DismissibleWidget> createState() => _DismissibleWidgetState();
}

class _DismissibleWidgetState extends State<DismissibleWidget> {
  List<String> fruits = ['rgrg','gerh'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dismissible')),
      body: ListView.builder(itemCount: fruits.length,itemBuilder: (context, index) {
        final fruit = fruits[index];
        return Dismissible(
          onDismissed: (direction){
            if (direction==DismissDirection.startToEnd){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(fruits[index]),
              backgroundColor: Colors.amber,));
            }
            else{
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(fruits[index]),
              backgroundColor: const Color.fromARGB(255, 25, 153, 128),));
            }
          },
          key: Key(fruit), child: ListTile(
            title: Text(fruits[index]),
            

          ));
      }
      ),
    );
  }
}