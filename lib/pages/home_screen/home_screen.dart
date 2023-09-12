import 'package:flutter/material.dart';
import 'home_screen_widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int isSelected = 0;
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
             buildProductCategory(index: 0,name: "All Products",),
             buildProductCategory(index: 1,name: "Jackets",),
             buildProductCategory(index: 2,name: "Sneakers",),
           ],
         ),
         SizedBox(height: 20,),
         Expanded(
             child:isSelected == 0 ? buildAllProducts() : buildJackets()
         )

       ],
      ),
    );
  }

  Widget buildProductCategory({
    required int index,
    required String name,
  }){
    return GestureDetector(
      onTap: ()=> setState(()=> isSelected = index),
      child: Container(
        height: 40,
        width: 100,
        margin: EdgeInsets.only(top: 10,right: 10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius:BorderRadius.circular(8),
            color: isSelected == index ? Colors.red : Colors.red.shade300
        ) ,
        child: Text(
          name,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
