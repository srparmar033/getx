import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'my_controller.dart';

class TotalPage extends StatelessWidget {
  TotalPage({Key? key}) : super(key: key);
  final MyController c = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Totle items",
              style: TextStyle(fontSize: 30, color: Colors.blue),
            ),
            const SizedBox(
              height: 20,
            ),
            Obx(() => Text(
                  "${c.sum.toString()}",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.redAccent,
                  ),
                )),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 180,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
                onPressed: () => Get.back(),
                child: Text(
                  "Go Back",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
