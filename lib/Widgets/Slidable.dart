import 'package:flutter/material.dart';
import 'package:flutter_application_2/Pages/About.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class SlidableWidget extends StatefulWidget {
  const SlidableWidget({super.key});

  @override
  State<SlidableWidget> createState() => _SlidableWidgetState();
}

class _SlidableWidgetState extends State<SlidableWidget> {
  final List _fruits = ['Apple', 'Banana', 'Grapes'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Slidable'),
        ),
        body: ListView.builder(
            itemCount: _fruits.length,
            itemBuilder: (context, index) {
              return Slidable(
                key: ValueKey(_fruits[index]),
                startActionPane: ActionPane(
                  motion: const StretchMotion(),
                  children: [
                    SlidableAction(
                      onPressed: (context) {
                        setState(() {
                          _fruits.removeAt(index);
                        });
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Deleted Successfully')));
                      },
                      label: 'Delete',
                      icon: Icons.delete,
                      backgroundColor: Colors.red,
                    ),
                    SlidableAction(
                      onPressed: (context) {
                        Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const About()));
                      },
                      label: 'Share',
                      icon: Icons.share,
                      backgroundColor: const Color.fromARGB(255, 192, 251, 252),
                      
                    ),
                    SlidableAction(
                      onPressed: (context){
                        showDialog(context: context, builder:(context){return AlertDialog(
                          title: const Text('Do you want to Cancel'),
                          actions: [
                            TextButton(onPressed: (){
                               Navigator.pop(context);
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(content: Text('Cancelled')));
                            }, 
                            child: const Text('Cancel'))
                            
                          ],
                        );} 
                        );
                      },
                      label: 'Send',
                      icon: Icons.send,
                      backgroundColor: const Color.fromARGB(255, 192, 251, 252),
                    ),
                    SlidableAction(onPressed: (context){
                       ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(content: Text('Updated')));
                    },
                    label: 'Update',
                    icon: Icons.update,
                    backgroundColor: const Color.fromARGB(255, 192, 251, 252),
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 101, 188, 51),
                        borderRadius: BorderRadius.circular(12)),
                    child: ListTile(
                      title: Text(_fruits[index]),
                    ),
                  ),
                ),
              );
            }));
  }
}
