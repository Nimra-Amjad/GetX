// ignore_for_file: prefer_const_constructors, unnecessary_string_interpolations

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/mycontroller.dart';
import 'package:getx/total.dart';

class MyCart extends StatelessWidget {
  MyCart({super.key});
  final MyController c = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(30),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
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
                      onPressed: () => c.increment(),
                      icon: Icon(Icons.add, color: Colors.white)),
                ),
                SizedBox(
                  width: 20,
                ),
                Obx(() => Text(
                      "${c.books.toString()}",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    )),
                SizedBox(
                  width: 20,
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.redAccent),
                  child: IconButton(
                      onPressed: () => c.decrement(),
                      icon: Icon(Icons.remove, color: Colors.white)),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
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
                      onPressed: () => c.incrementpens(),
                      icon: Icon(Icons.add, color: Colors.white)),
                ),
                SizedBox(
                  width: 20,
                ),
                Obx(() => Text(
                      "${c.pens.toString()}",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    )),
                SizedBox(
                  width: 20,
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.redAccent),
                  child: IconButton(
                      onPressed: () => c.decrementpens(),
                      icon: Icon(Icons.remove, color: Colors.white)),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(child: Container()),
                Container(
                  width: 150,
                  height: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.blue.shade900),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30))),
                      onPressed: () => Get.to(() => TotalPage()),
                      child: Text(
                        "Total",
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      )),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
