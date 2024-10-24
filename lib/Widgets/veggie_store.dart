import 'package:flutter/material.dart';
import 'package:flutter_application_2/Widgets/NewPage.dart';
import 'package:flutter_application_2/Widgets/models.dart';


class VeggieStore extends StatelessWidget {
  VeggieStore({super.key});

  final List<Vegetable> veggiesList = [
    Vegetable(
        veggieName: 'Onion',
        veggieDesc: 'Has More Vitamins',
        veggieImage: 'https://th.bing.com/th/id/OIP.x_nzJHPTJ6KiaQq98IySzAHaHa?rs=1&pid=ImgDetMain'),
    Vegetable(
        veggieName: 'Carrot',
        veggieDesc: 'Has More Nutrients',
        veggieImage: 'https://m.media-amazon.com/images/I/71S6oQqVa5L.jpg'),
    Vegetable(
        veggieName: 'Beetroot',
        veggieDesc: 'Has More Iron',
        veggieImage: 'https://www.fitterfly.com/blog/wp-content/uploads/2022/09/Is-Beetroot-Good-for-Diabetes-2-1200x720.webp')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Vegetable Store',
        ),
      ),
      body: ListView.builder(
          itemCount: veggiesList.length,
          itemBuilder: (context, index) {
            final veggie = veggiesList[index];
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
                              name: veggie.veggieName!,
                              desc: veggie.veggieDesc!,
                              image: veggie.veggieImage!,
                            )));
                      },
                      icon: Icon(Icons.arrow_forward_ios)),
                  title: Text(veggie.veggieName!),
                ),
              ),
            );
          }),
    );
  }
}