import 'package:flutter/material.dart';

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Stack'),
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('asset/rectangle.png'))
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 160,
                  left: 25,
                  child: Text(
                    'Wix Dev Conference 2024',
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 19),
                  ),
                ),
                Positioned(
                    top: 200,
                    left: 25,
                    child: Text(
                      'PLACE',
                       style: TextStyle(
                          fontWeight: FontWeight.bold, 
                          color: Colors.grey),
                    )
                ),
                Positioned(
                    left: 25,
                    top: 220,
                    child: Text(
                      '8240 Watson Farm Belews Creek NC,USA',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    )
                ),
                Positioned(
                    top: 260,
                    left: 25,
                    child: Text(
                      'DATE',
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                ),
                Positioned(
                    left: 200,
                    top: 260,
                    child: Text(
                      'TIME',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    )
                ),
                Positioned(
                    top: 280,
                    left: 200,
                    child: Text(
                      '07:30 PM',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    )
                ),
                Positioned(
                    left: 25,
                    top: 280,
                    child: Text(
                      'May 12, Thursday',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    )
                ),
                Positioned(
                    left: 25,
                    top: 330,
                    child: Text(
                      'CHECK IN TYPE',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    )
                ),
                Positioned(
                    left: 25,
                    top: 350,
                    child: Text(
                      'Regular Ticket',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    )
                ),
                Positioned(
                    left: 200,
                    top: 330,
                    child: Text(
                      'ORDER ID',
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold),
                    )
                ),
                Positioned(
                    left: 200,
                    top: 350,
                    child: Text(
                      '325932160023',
                      style: TextStyle(
                        color: Colors.black),
                    )
                ),
                Positioned(
                   left: 45,
                    bottom: 180,
                    child: Image.asset('asset/Barcode.jpg'),
                  ),
            ],
          ),
        ),
      )
    );
  }
}