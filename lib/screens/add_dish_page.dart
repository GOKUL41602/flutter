import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kot_fluttterv001/lists/list.dart';

class AddDishPage extends StatefulWidget {
  @override
  _AddDishPageState createState() => _AddDishPageState();
}

class _AddDishPageState extends State<AddDishPage> {
  void setVisiblityForTiffonDish() {
    ClassofLists.visiblityList.updateAll((key, value) => false);
    ClassofLists.visiblityList.update("Eatable-001", (value) => true);
    ClassofLists.visiblityList.update("Grilled Lamp Chops", (value) => true);
  }

  void setVisiblityForMealsDish() {
    ClassofLists.visiblityList.updateAll((key, value) => false);
    ClassofLists.visiblityList.update("Chicken Cutlet Meal", (value) => true);
    ClassofLists.visiblityList.update("Pattaya Rice", (value) => true);
    ClassofLists.visiblityList.update("Prawn Fritters Rice", (value) => true);
  }

  void setVisiblityForDrinks() {
    ClassofLists.visiblityList.updateAll((key, value) => false);
    ClassofLists.visiblityList.update("Black Tea", (value) => true);
    ClassofLists.visiblityList.update("Coffee", (value) => true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text("Canteen 3"),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            CupertinoPicker(
                backgroundColor: Colors.deepOrange.shade50,
                itemExtent: 22,
                onSelectedItemChanged: (value) {
                  setState(() {
                    value == 0
                        ? ClassofLists.visiblityList
                            .updateAll((key, value) => true)
                        : value == 1
                            ? setVisiblityForTiffonDish()
                            : value == 2
                                ? ClassofLists.visiblityList
                                    .updateAll((key, value) => false)
                                : value == 3
                                    ? setVisiblityForMealsDish()
                                    : value == 4
                                        ? ClassofLists.visiblityList
                                            .updateAll((key, value) => false)
                                        : value == 5
                                            ? setVisiblityForDrinks()
                                            : ClassofLists.visiblityList
                                                .updateAll(
                                                    (key, value) => true);
                  });
                },
                children: ClassofLists.cupertinoList),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView(
                children: [
                  Visibility(
                    visible: ClassofLists.visiblityList["Black Tea"] == true
                        ? true
                        : false,
                    child: Stack(
                      children: [
                        Visibility(
                          visible:
                              ClassofLists.itemVisiblity["Black Tea"] == true
                                  ? true
                                  : false,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.green,
                            ),
                            padding: EdgeInsets.all(2),
                            height: 20,
                            width: 20,
                            child: Text(
                              "${ClassofLists.itemCount["Black Tea"]}",
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        ListTile(
                          onLongPress: () {
                            setState(() {
                              ClassofLists.totalDishCount.remove("Black Tea");
                              ClassofLists.itemCount.update(
                                  "Black Tea",
                                  (value) => ClassofLists.itemCount
                                      .update("Black Tea", (value) => 0));
                              ClassofLists.itemVisiblity
                                  .update("Black Tea", (value) => false);
                            });
                          },
                          title: Text("Black Tea"),
                          subtitle: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Item No : 2"),
                              Text("Price : 25"),
                              SizedBox(
                                width: 10,
                              )
                            ],
                          ),
                          trailing: Container(
                            height: 25,
                            width: 25,
                            child: RawMaterialButton(
                              onPressed: () {
                                setState(() {
                                  var count =
                                      ClassofLists.itemCount["Black Tea"]! + 1;
                                  ClassofLists.totalDishCount["Black Tea"] =
                                      count;

                                  ClassofLists.itemCount.update(
                                      "Black Tea",
                                      (value) =>
                                          ClassofLists.getItemCount(value++));
                                  ClassofLists.itemVisiblity
                                      .update("Black Tea", (value) => true);
                                });
                              },
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  Visibility(
                    visible: ClassofLists.visiblityList["Coffee"] == true
                        ? true
                        : false,
                    child: Stack(
                      children: [
                        Visibility(
                          visible: ClassofLists.itemVisiblity["Coffee"] == true
                              ? true
                              : false,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.green,
                            ),
                            padding: EdgeInsets.all(2),
                            height: 20,
                            width: 20,
                            child: Text(
                              "${ClassofLists.itemCount["Coffee"]}",
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        ListTile(
                          onLongPress: () {
                            setState(() {
                              ClassofLists.totalDishCount.remove("Coffee");
                              ClassofLists.itemCount.update(
                                  "Coffee",
                                  (value) => ClassofLists.itemCount
                                      .update("Coffee", (value) => 0));
                              ClassofLists.itemVisiblity
                                  .update("Coffee", (value) => false);
                            });
                          },
                          title: Text("Coffee"),
                          subtitle: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Item No : 1"),
                              Text("Price : 25"),
                              SizedBox(
                                width: 10,
                              )
                            ],
                          ),
                          trailing: Container(
                            height: 25,
                            width: 25,
                            child: RawMaterialButton(
                              onPressed: () {
                                ClassofLists.totalDishCount["Coffee"] = 0;
                                setState(() {
                                  ClassofLists.totalDishCount.update(
                                      "Coffee",
                                      (value) =>
                                          ClassofLists.getItemCount(value++));
                                  ClassofLists.itemCount.update(
                                      "Coffee",
                                      (value) =>
                                          ClassofLists.getItemCount(value++));
                                  ClassofLists.itemVisiblity
                                      .update("Coffee", (value) => true);
                                });
                              },
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                  ),
                  Visibility(
                    visible: ClassofLists.visiblityList["Eatable-001"] == true
                        ? true
                        : false,
                    child: Stack(
                      children: [
                        Visibility(
                          visible:
                              ClassofLists.itemVisiblity["Eatable-001"] == true
                                  ? true
                                  : false,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.green,
                            ),
                            padding: EdgeInsets.all(2),
                            height: 20,
                            width: 20,
                            child: Text(
                              "${ClassofLists.itemCount["Eatable-001"]}",
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        ListTile(
                          onLongPress: () {
                            setState(() {
                              ClassofLists.totalDishCount.remove("Eatable-001");
                              ClassofLists.itemCount.update(
                                  "Eatable-001",
                                  (value) => ClassofLists.itemCount
                                      .update("Eatable-001", (value) => 0));
                              ClassofLists.itemVisiblity
                                  .update("Eatable-001", (value) => false);
                            });
                          },
                          title: Text("Eatable-001"),
                          subtitle: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Item No : 7"),
                              Text("Price : 12"),
                              SizedBox(
                                width: 10,
                              )
                            ],
                          ),
                          trailing: Container(
                            height: 25,
                            width: 25,
                            child: RawMaterialButton(
                              onPressed: () {
                                setState(() {
                                  var count =
                                      ClassofLists.itemCount["Eatable-001"]! +
                                          1;
                                  ClassofLists.totalDishCount["Eatable-001"] =
                                      count;
                                  ClassofLists.itemCount.update(
                                      "Eatable-001",
                                      (value) =>
                                          ClassofLists.getItemCount(value++));
                                  ClassofLists.itemVisiblity
                                      .update("Eatable-001", (value) => true);
                                });
                              },
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                  ),
                  Visibility(
                    visible:
                        ClassofLists.visiblityList["Chicken Cutlet Meal"] ==
                                true
                            ? true
                            : false,
                    child: Stack(
                      children: [
                        Visibility(
                          visible: ClassofLists
                                      .itemVisiblity["Chicken Cutlet Meal"] ==
                                  true
                              ? true
                              : false,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.green,
                            ),
                            padding: EdgeInsets.all(2),
                            height: 20,
                            width: 20,
                            child: Text(
                              "${ClassofLists.itemCount["Chicken Cutlet Meal"]}",
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        ListTile(
                          onLongPress: () {
                            setState(() {
                              ClassofLists.totalDishCount
                                  .remove("Chicken Cutlet Meal");
                              ClassofLists.itemCount.update(
                                  "Chicken Cutlet Meal",
                                  (value) => ClassofLists.itemCount.update(
                                      "Chicken Cutlet Meal", (value) => 0));
                              ClassofLists.itemVisiblity.update(
                                  "Chicken Cutlet Meal", (value) => false);
                            });
                          },
                          title: Text("Chicken Cutlet Meal"),
                          subtitle: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Item No : 4"),
                              Text("Price : 50"),
                              SizedBox(
                                width: 10,
                              )
                            ],
                          ),
                          trailing: Container(
                            height: 25,
                            width: 25,
                            child: RawMaterialButton(
                              onPressed: () {
                                setState(() {
                                  var count = ClassofLists
                                          .itemCount["Chicken Cutlet Meal"]! +
                                      1;
                                  ClassofLists.totalDishCount[
                                      "Chicken Cutlet Meal"] = count;
                                  ClassofLists.itemCount.update(
                                      "Chicken Cutlet Meal",
                                      (value) =>
                                          ClassofLists.getItemCount(value++));
                                  ClassofLists.itemVisiblity.update(
                                      "Chicken Cutlet Meal", (value) => true);
                                });
                              },
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                  ),
                  Visibility(
                    visible:
                        ClassofLists.visiblityList["Grilled Lamp Chops"] == true
                            ? true
                            : false,
                    child: Stack(
                      children: [
                        Visibility(
                          visible: ClassofLists
                                      .itemVisiblity["Grilled Lamp Chops"] ==
                                  true
                              ? true
                              : false,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.green,
                            ),
                            padding: EdgeInsets.all(2),
                            height: 20,
                            width: 20,
                            child: Text(
                              "${ClassofLists.itemCount["Grilled Lamp Chops"]}",
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        ListTile(
                          onLongPress: () {
                            setState(() {
                              ClassofLists.totalDishCount
                                  .remove("Grilled Lamp Chops");
                              ClassofLists.itemCount.update(
                                  "Grilled Lamp Chops",
                                  (value) => ClassofLists.itemCount.update(
                                      "Grilled Lamp Chops", (value) => 0));
                              ClassofLists.itemVisiblity.update(
                                  "Grilled Lamp Chops", (value) => false);
                            });
                          },
                          title: Text("Grilled Lamp Chops"),
                          subtitle: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Item No : 3"),
                              Text("Price : 20"),
                              SizedBox(
                                width: 10,
                              )
                            ],
                          ),
                          trailing: Container(
                            height: 25,
                            width: 25,
                            child: RawMaterialButton(
                              onPressed: () {
                                setState(() {
                                  var count = ClassofLists
                                          .itemCount["Grilled Lamp Chops"]! +
                                      1;
                                  ClassofLists.totalDishCount[
                                      "Grilled Lamp Chops"] = count;
                                  ClassofLists.itemCount.update(
                                      "Grilled Lamp Chops",
                                      (value) =>
                                          ClassofLists.getItemCount(value++));
                                  ClassofLists.itemVisiblity.update(
                                      "Grilled Lamp Chops", (value) => true);
                                });
                              },
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                  ),
                  Visibility(
                    visible: ClassofLists.visiblityList["Pattaya Rice"] == true
                        ? true
                        : false,
                    child: Stack(
                      children: [
                        Visibility(
                          visible:
                              ClassofLists.itemVisiblity["Pattaya Rice"] == true
                                  ? true
                                  : false,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.green,
                            ),
                            padding: EdgeInsets.all(2),
                            height: 20,
                            width: 20,
                            child: Text(
                              "${ClassofLists.itemCount["Pattaya Rice"]}",
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        ListTile(
                          onLongPress: () {
                            setState(() {
                              ClassofLists.totalDishCount
                                  .remove("Pattaya Rice");
                              ClassofLists.itemCount.update(
                                  "Pattaya Rice",
                                  (value) => ClassofLists.itemCount
                                      .update("Pattaya Rice", (value) => 0));
                              ClassofLists.itemVisiblity
                                  .update("Pattaya Rice", (value) => false);
                            });
                          },
                          title: Text("Pattaya Rice"),
                          subtitle: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Item No : 6"),
                              Text("Price : 10"),
                              SizedBox(
                                width: 10,
                              )
                            ],
                          ),
                          trailing: Container(
                            height: 25,
                            width: 25,
                            child: RawMaterialButton(
                              onPressed: () {
                                setState(() {
                                  var count =
                                      ClassofLists.itemCount["Pattaya Rice"]! +
                                          1;
                                  ClassofLists.totalDishCount["Pattaya Rice"] =
                                      count;
                                  ClassofLists.itemCount.update(
                                      "Pattaya Rice",
                                      (value) =>
                                          ClassofLists.getItemCount(value++));
                                  ClassofLists.itemVisiblity
                                      .update("Pattaya Rice", (value) => true);
                                });
                              },
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                  ),
                  Visibility(
                    visible:
                        ClassofLists.visiblityList["Prawn Fritters Rice"] ==
                                true
                            ? true
                            : false,
                    child: Stack(
                      children: [
                        Visibility(
                          visible: ClassofLists
                                      .itemVisiblity["Prawn Fritters Rice"] ==
                                  true
                              ? true
                              : false,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.green,
                            ),
                            padding: EdgeInsets.all(2),
                            height: 20,
                            width: 20,
                            child: Text(
                              "${ClassofLists.itemCount["Prawn Fritters Rice"]}",
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        ListTile(
                          onLongPress: () {
                            setState(() {
                              ClassofLists.totalDishCount
                                  .remove("Prawn Fritters Rice");
                              ClassofLists.itemCount.update(
                                  "Prawn Fritters Rice",
                                  (value) => ClassofLists.itemCount.update(
                                      "Prawn Fritters Rice", (value) => 0));
                              ClassofLists.itemVisiblity.update(
                                  "Prawn Fritters Rice", (value) => false);
                            });
                          },
                          title: Text("Prawn Fritters Rice"),
                          subtitle: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Item No : 5"),
                              Text("Price : 50"),
                              SizedBox(width: 10)
                            ],
                          ),
                          trailing: Container(
                            height: 25,
                            width: 25,
                            child: RawMaterialButton(
                              onPressed: () {
                                setState(() {
                                  var count = ClassofLists
                                          .itemCount["Prawn Fritters Rice"]! +
                                      1;
                                  ClassofLists.totalDishCount[
                                      "Prawn Fritters Rice"] = count;
                                  ClassofLists.itemCount.update(
                                      "Prawn Fritters Rice",
                                      (value) =>
                                          ClassofLists.getItemCount(value++));
                                  ClassofLists.itemVisiblity.update(
                                      "Prawn Fritters Rice", (value) => true);
                                });
                              },
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(20)),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        height: 50,
        backgroundColor: Colors.deepOrange,
        buttonBackgroundColor: Colors.white,
        animationDuration: Duration(milliseconds: 300),
        items: [
          Icon(Icons.save, color: Colors.black, size: 20),
          Icon(Icons.cancel, color: Colors.black, size: 20)
        ],
        onTap: (index) {
          index == 0
              ? validateDishCount()
              : index == 1
                  ? Navigator.popAndPushNamed(context, "home")
                  : null;
        },
      ),
    );
  }

  void validateDishCount() {
    int sum = 0;
    var dishCount = ClassofLists.itemCount.values;
    sum = dishCount.reduce((value, element) => value + element);

    if (sum > 0) {
      setState(() {
        Navigator.pushNamed(context, "home");
        ClassofLists.itemCount.updateAll((key, value) => 0);
        ClassofLists.itemVisiblity.updateAll((key, value) => false);
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Select a Dish to save"),
      ));
    }
  }
}
