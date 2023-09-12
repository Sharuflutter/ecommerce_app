import 'package:ecommerce_heyflutter/models/my_product.dart';
import 'package:flutter/material.dart';

Widget buildProductCategory({required int index,
  required String name,
  int isSelected=0,
}){
  return Container(
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
  );
}

Widget buildAllProducts(){
  return Container(
    margin: EdgeInsets.only(top: 15),
    height: 533,
    // width: 400,
    child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: (100/140),

        ),
        scrollDirection: Axis.vertical,
        itemCount:MyProducts.allProducts.length ,
        itemBuilder:(context,index){
          final allProducts= MyProducts.allProducts[index];
          return Container(
            width: MediaQuery.of(context).size.width /2,
            padding:EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.grey.withOpacity(0.1),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.red,
                    )
                  ],
                ),
                SizedBox(
                  height: 129,
                  width: 129,
                  child: Image.asset(allProducts.image,fit: BoxFit.fill,),
                ),
                Text(allProducts.name,style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),),
                Text(allProducts.category,style: TextStyle(
                    fontSize: 14,
                  color: Colors.red

                ),),
                Text('\$''${allProducts.price}',style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                ),),
              ],
            ),
          );
        }
    ),
  );
}