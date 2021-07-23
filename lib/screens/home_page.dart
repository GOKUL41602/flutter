import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:kot_fluttterv001/lists/list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text("Canteen 3"),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              height: 190,
              color: Colors.pinkAccent,
            ),
            ListTile(
              leading: Icon(
                Icons.list_alt,
                color: Colors.amberAccent,
              ),
              title: Text("Bill"),
            ),
            Divider(height: 1.0),
            ListTile(
              leading: Icon(
                Icons.loyalty_sharp,
                color: Colors.green,
              ),
              title: Text("Show Bills"),
            ),
            Divider(height: 1.0),
            ListTile(
              leading: Icon(
                Icons.list_alt,
                color: Colors.redAccent,
              ),
              title: Text("Log Out"),
            ),
            Divider(height: 1.0)
          ],
        ),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Canteen 3",
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  "Total : ______",
                  style: TextStyle(fontSize: 18),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView(
                children: getListTile(),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        height: 50,
        backgroundColor: Colors.deepOrange,
        buttonBackgroundColor: Colors.white,
        animationDuration: Duration(milliseconds: 300),
        items: [
          Icon(Icons.add, color: Colors.black, size: 20),
          Text(
            "✌",
            style: TextStyle(fontSize: 20),
          ),
          Icon(Icons.print, color: Colors.black, size: 20)
        ],
        onTap: (index) {
          index == 0
              ? Navigator.pushNamedAndRemoveUntil(
                  context, "addPage", (route) => false)
              : null;
        },
      ),
    );
  }

  List<Widget> getListTile() {
    // print(ClassofLists.totalDishCount.length);
    List<Widget> totalDishList = [];
    int count = 1;
    if (ClassofLists.totalDishCount.length > 0) {
      List dishName = ClassofLists.totalDishCount.keys.toList();
      for (String str in dishName) {
        {
          Widget tile = ListTile(
            title: Text(
              str,
              style: TextStyle(fontSize: 18),
            ),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("DishCount - ${count++}"),
                Text("DishPrice - ${ClassofLists.dishPrice[str]}"),
              ],
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Qty"),
                Text("${ClassofLists.totalDishCount[str]}")
              ],
            ),
          );
          totalDishList.add(tile);
          // totalDishList.add(SizedBox(height: 10,));
        }
      }
    }
    return totalDishList;
  }
}
