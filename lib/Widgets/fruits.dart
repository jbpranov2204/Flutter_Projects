import 'package:flutter/material.dart';
import 'package:flutter_application_2/Widgets/NewPage.dart';
import 'package:flutter_application_2/Widgets/models.dart';


class Fruits_store extends StatelessWidget {
  Fruits_store({super.key});

  final List<Fruits> FruitList = [
    Fruits(
        fruitsName: 'Apple',
        fruitsDesc: 'Very good',
        fruitsImage: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhKuQBuBoYU76-ij4p58VPAVK7CT5uMwOE-A&s'),
    Fruits(
        fruitsName: 'Orange',
        fruitsDesc: 'Good Nutrients',
        fruitsImage: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkrl8d8ftD0dsW7EOy2aGS52rzXkUyDJKhhQ&s'),
    Fruits(
        fruitsName: 'Banana',
        fruitsDesc: 'Very Tasty',
        fruitsImage: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnyPfgdTKxEoaX404TbZsYeldOI9ZAPIGhRw&s')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          ' Fruits Store',
        ),
      ),
      body: ListView.builder(
          itemCount: FruitList.length,
          itemBuilder: (context, index) {
            final dry = FruitList[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15)),
                child: ListTile(
                  trailing: IconButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => NewPage(
                              name: dry.fruitsName!,
                              desc: dry.fruitsDesc!,
                              image: dry.fruitsImage!,
                            )));
                      },
                      icon: Icon(Icons.arrow_forward_ios)),
                  title: Text(dry.fruitsName!),
                ),
              ),
            );
          }),
    );
  }
}