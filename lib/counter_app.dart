import 'package:flutter/material.dart';

class CounterAppScreen extends StatelessWidget {
  const CounterAppScreen({ Key? key }) : super(key: key);


  showAlert(BuildContext context) {
    return showDialog(
      context: context, 
      barrierDismissible: false,
      barrierLabel: "asdbnasbb",
      builder: (BuildContext context) {
        return AlertDialog(
            title: Text("This is simple alert dialog"),
            content: Text("This is body of alert dialog"),
            actions: [
              TextButton(
                onPressed: (){},
                child: Text("Yes"),
              ),
              TextButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: Text("No"),
              ),
            ],
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    
    return  Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
        actions: [
          PopupMenuButton(
            onSelected: (value) {
              print("Value : $value");
              if(value == 1) {
                print("Go to contact screen");
              }else if (value == 2){
                print("Go to play store");
              }
            },
            icon: Icon(Icons.more_horiz),
            // color: Colors.orange,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(
                color: Colors.red,
                width: 3
              )
            ),
            offset: Offset(
              5, 56
            ),
            itemBuilder: (BuildContext context){
              return [
                PopupMenuItem(
                  child: Text("Item 1"),
                  value: 1,
                ),
                PopupMenuItem(
                  child: Text("Item 1"),
                  value: 2,
                )              
              ];
            }
          )
        ],
      ),
      body: null,

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
      tooltip: "Click",
        elevation: 20,
        // foregroundColor: Colors.grey,
        hoverElevation: 50,
        // shape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.circular(20),
        //   side: BorderSide(
        //     color: Colors.green,
        //     width: 3
        //   )
        // ),
        backgroundColor: Colors.orange,
        hoverColor: Colors.pink,
        onPressed: (){
          showAlert(context);
        },
        label: Text("Add"),
        icon: Icon(Icons.add),
      )

      // floatingActionButton: FloatingActionButton(
      //   tooltip: "Click",
      //   elevation: 20,
      //   foregroundColor: Colors.grey,
      //   hoverElevation: 50,
      //   shape: RoundedRectangleBorder(
      //     borderRadius: BorderRadius.circular(20),
      //     side: BorderSide(
      //       color: Colors.green,
      //       width: 3
      //     )
      //   ),
      //   backgroundColor: Colors.orange,
      //   hoverColor: Colors.pink,
      //   onPressed: (){},
      //   child: Icon(Icons.add, color: Colors.red,),
      // ),
    );
  }
}