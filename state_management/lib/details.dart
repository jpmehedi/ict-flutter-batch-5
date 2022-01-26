import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management/logic_controller.dart';

class DetailsScreen extends StatelessWidget {
  final LogicController _logicController = Get.put(LogicController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
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
              onPressed: () {},
              child: Text("Click"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _logicController.doubleCount();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
