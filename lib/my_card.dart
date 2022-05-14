import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/my_controller.dart';
import 'package:getx/total_page.dart';

class MyCard extends StatelessWidget {
  MyCard({Key? key}) : super(key: key);

  final MyController c = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: <Widget>[
                const Text(
                  "Books",
                  style: TextStyle(fontSize: 30, color: Colors.amber),
                ),
                Expanded(child: Container()),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.redAccent),
                  child: IconButton(
                    icon: Icon(Icons.add, color: Colors.white),
                    onPressed: () => c.increment(),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Obx(() => Text(
                      "${c.books.toString()}",
                      style: TextStyle(fontSize: 30),
                    )),
                SizedBox(
                  width: 20,
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.redAccent),
                  child: IconButton(
                    icon: Icon(Icons.remove, color: Colors.white),
                    onPressed: () => c.decrement(),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: <Widget>[
                const Text(
                  "Pens",
                  style: TextStyle(fontSize: 30, color: Colors.amber),
                ),
                Expanded(child: Container()),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.redAccent),
                  child: IconButton(
                    icon: Icon(Icons.add, color: Colors.white),
                    onPressed: () => c.incrementpens(),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Obx(() => Text(
                      "${c.pens.toString()}",
                      style: TextStyle(fontSize: 30),
                    )),
                SizedBox(
                  width: 20,
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.redAccent),
                  child: IconButton(
                    icon: Icon(Icons.remove, color: Colors.white),
                    onPressed: () => c.decrementpens(),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Expanded(child: Container()),
                Container(
                  width: 150,
                  height: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                    onPressed: () => Get.to(() => TotalPage()),
                    child: Text(
                      "Total",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
