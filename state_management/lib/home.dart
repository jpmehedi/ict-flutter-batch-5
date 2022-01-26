import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management/details.dart';
import 'package:state_management/logic_controller.dart';

class HomeScreen extends StatelessWidget {
  final LogicController _logicController = Get.put(LogicController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            ListTile(
              title: Text("This is title"),
            ),
            ListTile(
              title: Text("This is title"),
            )
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text("Counter: ${_logicController.count}"),
            ),
            Obx(
              () => Text("Counter: ${_logicController.countDouble}"),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(DetailsScreen());
              },
              child: Text("Click"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _logicController.increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
