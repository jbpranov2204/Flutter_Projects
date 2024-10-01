import 'package:flutter/material.dart';
import 'package:flutter_application_2/Componets/Alert_Comp.dart';
import 'package:flutter_application_2/Componets/BottomSheet_comp.dart';
import 'package:flutter_application_2/Componets/Buttons.dart';


class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(title: Text('Tab Bar'),),
        body: Column(
          children: [
            TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.call),
                ),
                Tab(
                  icon: Icon(Icons.message),
                ),
                Tab(
                  icon: Icon(Icons.mediation),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                   CallButton(),Alert_Comp(),BottomSheetComp()
                  
                ]
              )
            )
          ],
        ),
      ),
    );
  }
}