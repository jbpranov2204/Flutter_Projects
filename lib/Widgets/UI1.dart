import 'package:flutter/material.dart';
import 'package:flutter_application_2/Componets/Drop_map_comp.dart';

class UI1 extends StatefulWidget {
  const UI1({super.key});

  @override
  State<UI1> createState() => _UI1State();
}

class _UI1State extends State<UI1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UI1'),),
        body: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Username',
                style: TextStyle(color: Colors.white, fontSize: 16),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                    decoration: InputDecoration(
                     hintText: 'Enter a username',
                     border: OutlineInputBorder(
                          borderRadius: BorderRadius.horizontal()),
                          ),
                  ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Name',
                style: TextStyle(color: Colors.white, fontSize: 16),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter your name',
                     border: OutlineInputBorder(
                          borderRadius: BorderRadius.horizontal()),
                    ),
                  ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Email',
                style: TextStyle(color: Colors.white, fontSize: 16),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter your email',
                     border: OutlineInputBorder(
                          borderRadius: BorderRadius.horizontal()),
                    ),
                  ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Gender',
                style: TextStyle(color: Colors.white, fontSize: 16),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
               child: DropDown(
                      hint: Text('Choose your gender'),
                      isExpanded: true,
                      icon: Icons.arrow_drop_down,),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'State',
                style: TextStyle(color: Colors.white, fontSize: 16),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
               child: DropDown(
                      hint: Text('Enter your state'),
                      isExpanded: true,
                      icon: Icons.arrow_drop_down,),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'City',
                style: TextStyle(color: Colors.white, fontSize: 16),),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
               child: DropDown(
                      hint: Text('Enter your city'),
                      isExpanded: true,
                      icon: Icons.arrow_drop_down,),
              ),
            ),
          ],
        ),
    );
  }
}