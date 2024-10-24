import 'package:flutter/material.dart';
import 'package:flutter_application_2/Widgets/NewPage.dart';
import 'package:flutter_application_2/Widgets/models.dart';


class DryFruits_store extends StatelessWidget {
  DryFruits_store({super.key});

  final List<DryFruits> dryList = [
    DryFruits(
        dryName: 'Cashew',
        dryDesc: 'Very good',
        dryImage: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRr8-2ZRTrTJ7vLZSR-B_27dbk4r0PNhbA4Hg&s'),
    DryFruits(
        dryName: 'Pista',
        dryDesc: 'Good Nutrients',
        dryImage: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSFzjUx4p0wP-XBcoj4TLY45EDyKMkD237YA&s'),
    DryFruits(
        dryName: 'Badam',
        dryDesc: 'Very Tasty',
        dryImage: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWs1ehtliYa99p_0_iGGsKvWdU5Yzron13Rw&s')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dry Fruits Store',
        ),
      ),
      body: ListView.builder(
          itemCount: dryList.length,
          itemBuilder: (context, index) {
            final dry = dryList[index];
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
                              name: dry.dryName!,
                              desc: dry.dryDesc!,
                              image: dry.dryImage!,
                            )));
                      },
                      icon: Icon(Icons.arrow_forward_ios)),
                  title: Text(dry.dryName!),
                ),
              ),
            );
          }),
    );
  }
}