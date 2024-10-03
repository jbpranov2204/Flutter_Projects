import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Slidable_Page extends StatefulWidget {
  const Slidable_Page({super.key});

  @override
  State<Slidable_Page> createState() => _SlidableWidgetState();
}

class _SlidableWidgetState extends State<Slidable_Page> {
  final List _Cars = ['Toyota', 'Benz', 'GTR'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:  Text('Slidable'),
        ),
        body: ListView.builder(
            itemCount: _Cars.length,
            itemBuilder: (context, index) {
              return Slidable(
                key: ValueKey(_Cars[index]),
                startActionPane: ActionPane(
                  motion:  StretchMotion(),
                  children: [
                    SlidableAction(
                      onPressed: (context) {},
                      label: 'Delete',
                      icon: Icons.delete,
                      backgroundColor: Colors.red,
                    ),
                    SlidableAction(
                      onPressed: (context) {},
                      label: 'Share',
                      icon: Icons.share,
                      backgroundColor:  Color.fromARGB(255, 192, 251, 252),
                      
                    ),
                   
                  ],
                ),
                child: Padding(
                  padding:  EdgeInsets.all(15.0),
                  child: Container(
                    child: ListTile(
                      title: Text(_Cars[index]),
                    ),
                  ),
                ),
              );
            }));
  }
}
