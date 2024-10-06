import 'package:flutter/material.dart';



class ListAndGrid extends StatelessWidget {
  const ListAndGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Grid view'),),
      body: Container(
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        children: const [
          Card(
              child: ListTile(
                title: Text('apple')
              ),
            ),
          Card(
              child: ListTile(
                title: Text('apple')
              ),
            ),  
            Card(
              child: ListTile(
                title: Text('apple')
              ),
            ),
            Card(
              child: ListTile(
                title: Text('apple')
              ),
            ),
            Card(
              child: ListTile(
                title: Text('apple')
              ),
            ),
            Card(
              child: ListTile(
                title: Text('apple')
              ),
            ),
            Card(
              child: ListTile(
                title: Text('apple')
              ),
            ),
            Card(
              child: ListTile(
                title: Text('apple')
              ),
            ),
          
        ],
        ),
       

      ),
    );
  }
}




























































// class ListAndGrid extends StatelessWidget {
//   const ListAndGrid({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Listview'),),
//       body: Container(
//         child: ListView(
//           children: [
//             Card(
//               child: ListTile(
//                 title: Text('apple')
//               ),
//             ),
//           Card(
//               child: ListTile(
//                 title: Text('apple')
//               ),
//             ),  
//             Card(
//               child: ListTile(
//                 title: Text('apple')
//               ),
//             ),
//             Card(
//               child: ListTile(
//                 title: Text('apple')
//               ),
//             ),
//             Card(
//               child: ListTile(
//                 title: Text('apple')
//               ),
//             ),
//             Card(
//               child: ListTile(
//                 title: Text('apple')
//               ),
//             ),
//             Card(
//               child: ListTile(
//                 title: Text('apple')
//               ),
//             ),
//             Card(
//               child: ListTile(
//                 title: Text('apple')
//               ),
//             ),
//           ],
        
//         ),
//       ),
      
//     );
//   }
// }

