import 'package:flutter/material.dart';
import 'package:flutter_application_2/Whatsapp_UI/Pages/store.dart';
import 'package:flutter_application_2/Widgets/Drawer.dart';
import 'package:flutter_application_2/Widgets/Forms.dart';



class NewTabbar extends StatelessWidget {
   NewTabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Column(
          children: [
            const TabBar(
              tabs: [
                Tab(
                  text: 'CHATS',
                  
                ),
                Tab(
                  text: 'STATUS',
                ),
                Tab(
                  text: 'CALLS',
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  StoreWidget_(),DrawerWidget(),FormWidget()
                ]
              )
            )
          ],
        ),
      ),
    );
  }
}