import 'package:flutter/material.dart';

class GridViewScreen  extends StatelessWidget {
  static const String path = "GridViewScreen";
  final List<Color> colors = [
    Colors.pink,
    Colors.purple,
    Colors.green,
    Colors.orange,
    Colors.red
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GridView"),),
      body: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        padding: EdgeInsets.all(10),
        children: List.generate(5, (index) {
          return Card(
            elevation: 10,
            color: colors[index],
            child: GridTile(
              header: Text("Header"),
              child: Icon(Icons.person),
              footer: Text("Footer"),
            ),
          );
        })
      ),
    );
  }
}









// GridView.count(
//         crossAxisCount: 3,
//         crossAxisSpacing: 10,
//         mainAxisSpacing: 10,
//         padding: EdgeInsets.all(10),
//         children: [
//           GestureDetector(
//             onTap: (){
//               print(" GridView Taped");
//             },
//             child: Container(
//               width: 50,
//               height: 50,
//               color: Colors.orange,
//               child: FlutterLogo()
//             ),
//           ),
//           Container(
//             width: 50,
//             height: 50,
//             color: Colors.pink,
//             child: FlutterLogo()
//           ),
//           Container(
//             width: 50,
//             height: 50,
//             color: Colors.purple,
//             child: FlutterLogo()
//           ),
//           Container(
//             width: 50,
//             height: 50,
//             color: Colors.yellow,
//             child: FlutterLogo()
//           ),
//                Container(
//             width: 50,
//             height: 50,
//             color: Colors.pink,
//             child: FlutterLogo()
//           ),
//           Container(
//             width: 50,
//             height: 50,
//             color: Colors.purple,
//             child: FlutterLogo()
//           ),     Container(
//             width: 50,
//             height: 50,
//             color: Colors.pink,
//             child: FlutterLogo()
//           ),
//             Container(
//             width: 50,
//             height: 50,
//             color: Colors.purple,
//             child: FlutterLogo()
//           ),  
//         ],
//       ),