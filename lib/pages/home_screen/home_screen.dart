import 'package:flutter/material.dart';
import 'home_screen_widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         Text(
           "Our Products",
           style: TextStyle(
             fontSize: 27,
             fontWeight: FontWeight.bold
           ),
         ),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             buildProductCategory(index: 0,name: "All Products"),
             buildProductCategory(index: 1,name: "Jackets"),
             buildProductCategory(index: 2,name: "Sneakers"),
           ],
         ),
         buildAllProducts()
       ],
      ),
    );
  }
}
