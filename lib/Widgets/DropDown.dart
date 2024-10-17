// import 'package:flutter/material.dart';
// import 'package:flutter_application_2/Componets/DropDown_comp.dart';



//  class DropDownWidget extends StatefulWidget {
//     DropDownWidget({super.key});

   


//    @override
//    State<DropDownWidget> createState() => _DropDownWidgetState();
//  }

//  class _DropDownWidgetState extends State<DropDownWidget> {
//   String? selectedValue;
//   final TextEditingController words = TextEditingController();
  

   
//    @override
//    Widget build(BuildContext context) {
//      return Scaffold(
//        appBar: AppBar(
//          title: Text('Drop Down'),
         
//        ),
//        body: Column(
//         children: [
//           SizedBox(
//             height: 20,
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: TextField(
//               controller: words,
//                decoration: InputDecoration(
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(20),
                  
//                 )
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 60,
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20),
//             child: Container(
//               width: double.infinity,
//               height: 60,
//               padding: EdgeInsets.all(15),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(20),
//                 border: Border.all(color: Colors.white)
//                 ),
//               child: DropdownComp(hinttext: 'Select Your Gender', isExpanded: true, iconData: Icons.arrow_downward),
//            ),
//           ),
//           SizedBox(
//           height: 30,
//          ),
//          ElevatedButton(onPressed: (){
//           ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(words.text),
//           ));
//           },
//          child: Text('Submit'))
//         ],
//        ),
//      );
//    }
//  }

import 'package:flutter/material.dart';
import 'package:flutter_application_2/Componets/Drop_map_comp.dart';



class newDrop extends StatefulWidget {
  const newDrop({super.key});

  @override
  State<newDrop> createState() => _newDropState();
}

class _newDropState extends State<newDrop> {
  final TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Drop Down'),),
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                
                SizedBox(
                  height: 50),
                DropDown(
                  hint: Text('Select your gender'),
                  isExpanded: true,
                  icon: Icons.arrow_drop_down,
                ),
                SizedBox(
                  height:20),
                  ElevatedButton(
                 onPressed: () {
                final snackBar = SnackBar(content: Text(nameController.text),);
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
             },
             child: Text('Submit'),
            )
          ],
        )
      )
    );
  }
}