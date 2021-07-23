import 'package:flutter/material.dart';
import 'package:kot_fluttterv001/screens/home_page.dart';
import 'package:kot_fluttterv001/screens/add_dish_page.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute:"home",
      routes: {
        "home":(context)=>HomePage(),
        "addPage":(context)=>AddDishPage()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}