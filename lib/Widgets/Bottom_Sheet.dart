import 'package:flutter/material.dart';
import 'package:flutter_application_2/Widgets/Drawer.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Sheet'),),

        body: Center(
          child: ElevatedButton(onPressed: (){
            showModalBottomSheet(
              backgroundColor: const Color.fromARGB(199, 16, 218, 201),
              context: context,
               builder: (context) {
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                     title: const Text('Toyota Supra'),
                     trailing: ElevatedButton(onPressed: (){
                      Navigator.pop(context);
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Added Successfully')));
                     },
                     child: const Icon(Icons.shop)), 
                    ),
                  ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: ListTile(
                     title: const Text('GTR'),
                      trailing: ElevatedButton(onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const DrawerWidget()));
                      }, 
                      child: const Icon(Icons.trolley)), 
                    ),
                   ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                     title: const Text('Ferari'),
                      trailing: ElevatedButton(onPressed: (){
                        showDialog(context: context, builder: (context){return AlertDialog(
                          title: const Text('Are you Sure'),
                          actions: [
                            TextButton(onPressed: (){
                              Navigator.pop(context);
                            }, child: const Text('Cancel'))
                          ],
                        );
                        });
                      },
                       child: const Icon(Icons.movie)), 
                    ),
                  ),
                ],
              );
            });
          }, child: const Text('Press For BottomSheet')),
        ),
      
    );
  }
}