import 'package:flutter/material.dart';

class Text_Field extends StatelessWidget {
   Text_Field({super.key, required this.hint_Text, required this.border_radius, required this.icondata, required this.prefixiconcolor, this.controller});

  final String hint_Text;
  final double border_radius;
  final IconData icondata;
  final Color prefixiconcolor;
  final controller;




  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: Icon(icondata),
        prefixIconColor: prefixiconcolor,
        hintText: hint_Text,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(border_radius)
        
          

        )
      ),
    );
  }
}