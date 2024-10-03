import 'package:flutter/material.dart';

class Bottomsheet_Page extends StatelessWidget {
  const Bottomsheet_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Sheet'),
      ),
      body: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Column(
                    children: [
                       Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                     title: const Text('Apple'),
                     trailing: ElevatedButton(onPressed: (){
                      Navigator.pop(context);
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Added Successfully')));
                     },
                     child: const Icon(Icons.shop)), 
                    ),
                  )
                    ],
                  );
                });
          },
          child: Text('Press')),
    );
  }
}
