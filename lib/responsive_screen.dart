
import 'package:flutter/material.dart';

class RespoonsiveScreen extends StatelessWidget {
    static final String path = "RespoonsiveScreen";
  const RespoonsiveScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(title: Text("Responsive $width"),),
      body: SingleChildScrollView(
        child: Column(
          children: [
           if (width < 480) Column(
             children: [
                 Container(
                   width: width,
                   height: 150,
                   color: Colors.red,
                 ),
                Container(
                  width: width,
                  height: 150,
                 color: Colors.pink,
                ),
               Container(
                width: width,
                height: 150,
                 color: Colors.green,
               ), 
               Container(
                width: width,
                height: 150,
                 color: Colors.blue,
               ),
            
             ],
            ) else Row(
             children: [
                 Expanded(
                   flex: 2,
                   child: Container(
                     height: 150,
                     color: Colors.red,
                   ),
                 ),
                Expanded(
                  flex: 2,
                  child: Container(
                   height: 150,
                   color: Colors.pink,
                  ),
                ),
               Expanded(
                 flex: 2,
                 child: Container(
                   height: 150,
                   color: Colors.green,
                 ),
               ), 
               Expanded(
                 flex: 2,
                 child: Container(
                   height: 150,
                   color: Colors.blue,
                 ),
               ),
            
             ],
           ),
      
            // SingleChildScrollView(
            //   child: Row(
            //     children: [
            //       Container(
            //         width: 150,
            //         height: 150,
            //         color: Colors.red,
            //       ),
            //        Container(
            //         width: 150,
            //         height: 150,
            //         color: Colors.pink,
            //       ),
            //       Container(
            //         width: 150,
            //         height: 150,
            //         color: Colors.green,
            //       ), 
            //       Container(
            //         width: 150,
            //         height: 150,
            //         color: Colors.blue,
            //       ),
            
            //     ],
            //   ),
            // ),
      
      
          //  Row(
          //    children: [
          //       Container(
          //          width: width / 2,
          //          height: 150,
          //          color: Colors.red,
          //        ),
          //       Container(
          //         width: width / 6,
          //        height: 150,
          //        color: Colors.pink,
          //       ),
          //      Container(
          //        height: 150,
          //        width: width / 6,
          //        color: Colors.green,
          //      ), 
          //      Container(
          //        height: 150,
          //        width: width / 6,
          //        color: Colors.blue,
          //      ),
          //    ],
          //  ),
            Container(
              width: width,
              height: 150,
              color: Colors.tealAccent,
            ),
            Container(
              width: width,
              height: 150,
              color: Colors.orange,
            ),
            Container(
              width: width,
              height: 150,
              color: Colors.yellow,
            ),
            Container(
              width: width,
              height: 150,
              color: Colors.purple,
            ),
            
          ],
        ),
      ),
    );
  }
}