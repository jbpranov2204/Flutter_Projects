import 'package:flutter/material.dart';
import 'package:flutter_application_2/Componets/Alert_Comp.dart';
import 'package:flutter_application_2/Pages/BottomSheet_page.dart';
import 'package:flutter_application_2/Pages/Slidable_Page.dart';



class Bottom_Navigation extends StatefulWidget {
  Bottom_Navigation({super.key});

  @override
  State<Bottom_Navigation> createState() => _Bottom_NavigationState();
}

class _Bottom_NavigationState extends State<Bottom_Navigation> {
  void ontap(int a) {
    setState(() {
      _selectedIndex = a;
    });
    
  }

  int _selectedIndex = 0;

  List Widgets = [
    Alert_Comp(),
    Bottomsheet_Page(),
    Slidable_Page()

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Widgets.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Message'),
          BottomNavigationBarItem(icon: Icon(Icons.rocket), label: 'Status'),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Call')
        ],
        currentIndex: _selectedIndex,
        onTap: ontap,
      ),
    );
  }
}
