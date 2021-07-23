import 'package:flutter/material.dart';

class ClassofLists {
  static List<Text> cupertinoList = [
    Text("All"),
    Text("Tiffon"),
    Text("Snacks"),
    Text("Meals"),
    Text("Snacks"),
    Text("Hot & Cold Drinks")
  ];

  static List<Text> allDishList = [
    Text("Black Tea"),
    Text("Coffee"),
    Text("Eatable-001"),
    Text("Chicken Cutlet Meal"),
    Text("Grilled Lamp Chops"),
    Text("Pattaya Rice"),
    Text("Prawn Fritters Rice"),
  ];

  static List<Text> itemNoList = [Text("2"), Text("1"), Text("2")];

  static Map<String, int> dishId = {
    "Black Tea": 2,
    "Coffee": 1,
    "Eatable-001": 7,
    "Chicken Cutlet Meal": 4,
    "Grilled Lamp Chops": 3,
    "Pattaya Rice": 6,
    "Prawn Fritters Rice": 5
  };

  static Map<String, int> dishPrice = {
    "Black Tea": 25,
    "Coffee": 25,
    "Eatable-001": 12,
    "Chicken Cutlet Meal": 50,
    "Grilled Lamp Chops": 20,
    "Pattaya Rice": 10,
    "Prawn Fritters Rice": 50
  };

  static Map<String, int> totalDishCount = {};

  static Map<String, bool> visiblityList = {
    "Black Tea": true,
    "Coffee": true,
    "Eatable-001": true,
    "Chicken Cutlet Meal": true,
    "Grilled Lamp Chops": true,
    "Pattaya Rice": true,
    "Prawn Fritters Rice": true
  };

  static Map<String, int> itemCount = {
    "Black Tea": 0,
    "Coffee": 0,
    "Eatable-001": 0,
    "Chicken Cutlet Meal": 0,
    "Grilled Lamp Chops": 0,
    "Pattaya Rice": 0,
    "Prawn Fritters Rice": 0
  };

  static Map<String, bool> itemVisiblity = {
    "Black Tea": false,
    "Coffee": false,
    "Eatable-001": false,
    "Chicken Cutlet Meal": false,
    "Grilled Lamp Chops": false,
    "Pattaya Rice": false,
    "Prawn Fritters Rice": false
  };
  static int getItemCount(int count) {
    count++;
    return count;
  }
}
