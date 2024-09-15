import 'package:flutter/material.dart';



class Snackbar extends StatefulWidget {
  const Snackbar({super.key});

  @override
  State<Snackbar> createState() => _SnackbarState();
}

class _SnackbarState extends State<Snackbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SnackBar'),
      ),
      
      body: Center(
        child: Container(
          child: ElevatedButton(onPressed: () {
            final snackBar = SnackBar(content: Text('Process Success'));
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          }, 
          child: Text('press me')),
          
        ),
      ),
    );
   }
}