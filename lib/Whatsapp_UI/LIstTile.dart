import 'package:flutter/material.dart';


class ListtileCustom extends StatelessWidget {
  ListtileCustom({super.key, required this.ima, required this.tex, required this.sutex, required this.tim});

  final String ima;
  final String tex;
  final String sutex;
  final String tim;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(ima),
        ),
            title: Text(tex),
            subtitle: Text(sutex),
            trailing: Text(tim),
          );
    
  }
}