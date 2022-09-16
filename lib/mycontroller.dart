// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyController extends GetxController {
  var books = 0.obs;
  var pens = 0.obs;
  int get sum => books.value + pens.value;
  increment() {
    books.value++;
  }

  decrement() {
    if (books.value <= 0) {
      Get.snackbar("Buying Books", "Cannot be less than zero",
          icon: Icon(Icons.alarm),
          barBlur: 20,
          isDismissible: true,
          duration: Duration(seconds: 3));
    } else {
      books.value--;
    }
  }

  incrementpens() {
    pens.value++;
  }

  decrementpens() {
    if (pens.value <= 0) {
      Get.snackbar("Buying Pens", "Cannot be less than zero",
          icon: Icon(Icons.alarm),
          barBlur: 20,
          isDismissible: true,
          duration: Duration(seconds: 3));
    } else {
      pens.value--;
    }
  }
}
