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
      appBar: AppBar(title: Text('Drawer'),),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(child: 
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
              title: Text('Profile'),
              leading: Icon(Icons.person),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ProfileWidget()));
              },
              
            ),
                  ListTile(
              title: Text('Dash Board'),
              leading: Icon(Icons.dashboard),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>Dashboard()));
               
              },
              
            ),
                  ListTile(
              title: Text('Help (contact us)'),
              leading: Icon(Icons.help),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>HelpWidget()));
               
              },

              
            ),
                  ListTile(
              title: Text('History'),
              leading: Icon(Icons.history),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>History()));
               
              },
              
            ),
                  ListTile(
              title: Text('About Us'),
              leading: Icon(Icons.info),
               onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>About()));
               
              },
              
            ),
            SizedBox(
              height: 300,
            ),
                  ListTile(
              title: Text('Log out'),
              leading: Icon(Icons.logout),
               onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>Logout()));
               
              },
              
            ),
          ],
        ),
      ),
    );
  }
}