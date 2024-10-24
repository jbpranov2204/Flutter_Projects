import 'package:flutter/material.dart';

class Vegetables {
  
  String? veggieName;
  String? veggieDesc;
  Color? veggieColor;

  Vegetables({
    required this.veggieName, required this.veggieDesc, this.veggieColor});

  
  void printFunction(name) {
    print(name);
  }
}

void main() {
  Vegetables veggies = Vegetables(
    veggieName: 'Onion', 
    veggieDesc: 'Has Good Source of Vitamins',
    veggieColor: Colors.deepOrange
  );

  veggies.veggieName = 'Carrot';

  veggies.printFunction('Onion');
}