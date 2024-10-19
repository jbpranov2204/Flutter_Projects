import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Card'),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(9.0),
              child: Container(
              
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 5, 5, 5),
                  borderRadius: BorderRadius.circular(15)
                ),
                height: 200,
                child: Stack(
                  children: [
                    Positioned(
                      left: 20,
                      child: Container(
                        height: 60,
                        child: Image.asset('asset/logo.png'),
                      )
                    ),
                     Positioned(
                      left: 260,
                      top: 25,
                      child: Container(
                        height: 60,
                        child: Image.asset('asset/chip.png'),
                      )
                    ),
                     Positioned(
                          top: 60,
                          left: 25,
                          child: Text(
                            'its Where You Want to be',
                            style: TextStyle(
                                fontStyle: FontStyle.italic,
                                color: Color.fromARGB(192, 192, 192, 192),
                                fontSize: 15),
                          ),
                        ),
                         Positioned(
                          bottom: 50,
                          left: 25,
                          child: Text(
                            '5678 3489 0126 8906',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                color: Color.fromARGB(192, 192, 192, 192),
                                fontSize: 20),
                          ),
                        ),
                        Positioned(
                          bottom: 30,
                          left: 25,
                          child: Text(
                            'PRANOV',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                               color: Color.fromARGB(192, 192, 192, 192),
                                fontSize: 17),
                          ),
                        ),
                        Positioned(
                top: 90,
                right: 15,
                child: Container(
                  height: 800,
                  width: 800,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white.withOpacity(0.1)),
                )),
            Positioned(
                bottom: 90,
                left: 15,
                child: Container(
                  height: 800,
                  width: 800,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white.withOpacity(0.1)),
                 )
                ),
                Positioned(
                          bottom: 20,
                          right: 25,
                          child: Text(
                            'PLATINUM',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                color: Color.fromARGB(192, 192, 192, 192),
                                fontSize: 20),
                          ),
                        ),
               ],
              ),
             ),
            ),
          ],
        ),
      ),
    );
  }
}