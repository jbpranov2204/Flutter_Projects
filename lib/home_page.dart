import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
   Homepage({super.key});

  final List<String> names = ['kjgg','ajscj','dcgug','dcgg','kjfhihw'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo'),

      ),

  
      body: ListView.builder(
        itemCount : names.length,
        itemBuilder: (context, index){
          return Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(115, 238, 109, 165),
                  borderRadius: BorderRadius.circular(13)
                ),
                child: ListTile(
                  title: Text(names[index]),
                ),
              ),
              SizedBox(
                height :10
              )
            ],

          );
        },
      ),

    );
  }
}