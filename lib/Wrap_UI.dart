import 'package:flutter/material.dart';


class WrapWidget extends StatelessWidget {
  const WrapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff171A1F),
      appBar: AppBar(
        backgroundColor: Color(0xff171A1F),
        leading: Icon(Icons.arrow_back),
      ),
      body: Column(
        children: [
          Divider(),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'What kind of events',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                      color: Colors.white),
                ),
                Text('do you like?',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                        color: Colors.white)),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 300,
                  width: 400,
                  child: Wrap(
                      alignment: WrapAlignment.start,
                      spacing: 10,
                      runSpacing: 15,
                      children: [
                        Chip(
                          label: Text(
                            'Business',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(255, 248, 247, 247),
                              
                            ),
                          ),
                          avatar: Icon(
                                      Icons.work
                                    ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        Chip(
                            label: Text('Arts',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: const Color.fromARGB(255, 252, 251, 251))),
                                    avatar: Icon(
                                      Icons.brush
                                    ),
                           
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        Chip(
                            label: Text('History',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: const Color.fromARGB(255, 250, 249, 249))),
                                    avatar: Icon(
                                      Icons.history_edu
                                    ),
                           
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        Chip(
                            label: Text('Entrepreneurship',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: const Color.fromARGB(255, 248, 247, 247))),
                                    avatar: Icon(
                                      Icons.open_with
                                    ),
                            
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        Chip(
                            label: Text('Gaming',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: const Color.fromARGB(255, 252, 250, 250))),
                                    avatar: Icon(
                                      Icons.work
                                    ),
                            
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        Chip(
                            label: Text('Cars',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: const Color.fromARGB(255, 247, 244, 244))),
                                    avatar: Icon(
                                      Icons.work
                                    ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        Chip(
                          label: Text(
                            'Business',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(255, 248, 247, 247),
                              
                            ),
                          ),
                          avatar: Icon(
                                      Icons.work
                                    ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        Chip(
                            label: Text('Arts',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: const Color.fromARGB(255, 252, 251, 251))),
                                    avatar: Icon(
                                      Icons.brush
                                    ),
                           
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                         Chip(
                            label: Text('History',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: const Color.fromARGB(255, 250, 249, 249))),
                                    avatar: Icon(
                                      Icons.history_edu
                                    ),
                           
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        Chip(
                            label: Text('Entrepreneurship',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: const Color.fromARGB(255, 250, 249, 249))),
                                    avatar: Icon(
                                      Icons.work
                                    ),
                           
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        Chip(
                            label: Text('Gaming',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: const Color.fromARGB(255, 248, 247, 247))),
                                    avatar: Icon(
                                      Icons.work
                                    ),
                           
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        Chip(
                            label: Text('Cars',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: const Color.fromARGB(255, 241, 241, 241))),
                                    avatar: Icon(
                                      Icons.work
                                    ),
                            
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        Chip(
                          label: Text(
                            'Business',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(255, 248, 247, 247),
                              
                            ),
                          ),
                          avatar: Icon(
                                      Icons.work
                                    ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        Chip(
                            label: Text('Arts',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: const Color.fromARGB(255, 252, 251, 251))),
                                    avatar: Icon(
                                      Icons.brush
                                    ),
                           
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        Chip(
                            label: Text('History',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: const Color.fromARGB(255, 250, 249, 249))),
                                    avatar: Icon(
                                      Icons.history_edu
                                    ),
                           
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        Chip(
                            label: Text('Entrepreneurship',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: const Color.fromARGB(255, 252, 252, 252))),
                                    avatar: Icon(
                                      Icons.work
                                    ),
                            
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        Chip(
                            label: Text('Gaming',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: const Color.fromARGB(255, 250, 249, 249))),
                                    avatar: Icon(
                                      Icons.work
                                    ),
                            
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        Chip(
                            label: Text('Cars',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: const Color.fromARGB(255, 247, 245, 245))),
                                    avatar: Icon(
                                      Icons.work
                                    ),
                            
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                      ]),
                ),
                SizedBox(
                  height: 200,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xffF1038E),
                      minimumSize: Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Lets Go',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}