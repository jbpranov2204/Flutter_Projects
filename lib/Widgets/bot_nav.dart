import 'package:flutter/material.dart';
import 'package:flutter_application_2/Widgets/dry_fruit.dart';
import 'package:flutter_application_2/Widgets/fruits.dart';
import 'package:flutter_application_2/Widgets/veggie_store.dart';


class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedindex = 0;

  void ontapped(int index) {
    setState(() {
      _selectedindex = index;
    });
    _pageController.jumpToPage(_selectedindex);
  }

  final PageController _pageController = PageController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [ Fruits_store(), VeggieStore(), DryFruits_store()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Fruits'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Veggies'),
          BottomNavigationBarItem(icon: Icon(Icons.inbox), label: 'Dry Fruits')
        ],
        currentIndex: _selectedindex,
        onTap: ontapped,
      ),
    );
  }
}