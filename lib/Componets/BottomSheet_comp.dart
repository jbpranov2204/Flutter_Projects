import 'package:flutter/material.dart';
import 'package:flutter_application_2/Widgets/Drawer.dart';

class BottomSheetComp extends StatelessWidget {
  const BottomSheetComp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Sheet'),),

        body: Center(
          child: ElevatedButton(onPressed: (){
            showModalBottomSheet(
              backgroundColor: Color.fromARGB(199, 16, 218, 201),
              context: context,
               builder: (context) {
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                     title: Text('Toyota Supra'),
                     trailing: ElevatedButton(onPressed: (){
                      Navigator.pop(context);
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Added Successfully')));
                     },
                     child: Icon(Icons.shop)), 
                    ),
                  ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: ListTile(
                     title: Text('GTR'),
                      trailing: ElevatedButton(onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => DrawerWidget()));
                      }, 
                      child: Icon(Icons.trolley)), 
                    ),
                   ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                     title: Text('Ferari'),
                      trailing: ElevatedButton(onPressed: (){
                        showDialog(context: context, builder: (context){return AlertDialog(
                          title: Text('Are you Sure'),
                          actions: [
                            TextButton(onPressed: (){
                              Navigator.pop(context);
                            }, child: Text('Cancel'))
                          ],
                        );
                        });
                      },
                       child: Icon(Icons.movie)), 
                    ),
                  ),
                ],
              );
            });
          }, child: Text('Press For BottomSheet')),
        ),
      
    );
  }
}