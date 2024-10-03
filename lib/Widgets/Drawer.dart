import 'package:flutter/material.dart';
import 'package:flutter_application_2/Pages/About.dart';
import 'package:flutter_application_2/Pages/DashBoard.dart';
import 'package:flutter_application_2/Pages/Help.dart';
import 'package:flutter_application_2/Pages/History.dart';
import 'package:flutter_application_2/Pages/Logout.dart';
import 'package:flutter_application_2/Pages/Profile.dart';



class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Drawer'),),
      drawer: Drawer(
        child: Column(
          children: [
            const DrawerHeader(child: 
            Row(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1816958428771749888/f49y3HRM_400x400.png'),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  

                  children: [Text('Pranov')
                  ,Text('jbpranov@gmail.com', style: TextStyle(fontSize: 11),)],
                  


                  
                )
                
              ],

            )),
            ListTile(
              title: const Text('Profile'),
              leading: const Icon(Icons.person),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const ProfileWidget()));
              },
              
            ),
                  ListTile(
              title: const Text('Dash Board'),
              leading: const Icon(Icons.dashboard),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>const Dashboard()));
               
              },
              
            ),
                  ListTile(
              title: const Text('Help (contact us)'),
              leading: const Icon(Icons.help),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>const HelpWidget()));
               
              },

              
            ),
                  ListTile(
              title: const Text('History'),
              leading: const Icon(Icons.history),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>const History()));
               
              },
              
            ),
                  ListTile(
              title: const Text('About Us'),
              leading: const Icon(Icons.info),
               onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>const About()));
               
              },
              
            ),
            const SizedBox(
              height: 300,
            ),
                  ListTile(
              title: const Text('Log out'),
              leading: const Icon(Icons.logout),
               onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>const Logout()));
               
              },
              
            ),
          ],
        ),
      ),
    );
  }
}