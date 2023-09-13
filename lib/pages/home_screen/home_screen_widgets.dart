import 'package:ecommerce_heyflutter/models/my_product.dart';
import 'package:ecommerce_heyflutter/widgets/product_card.dart';
import 'package:flutter/material.dart';

import '../details_screen/details_screen.dart';

Widget buildAllProducts(){
  return Container(
   // margin: EdgeInsets.only(top: 15),
   // height: 533,
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
          return GestureDetector(
            onTap: ()=> Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>
                    DetailsScreen( product :allProducts)
                  )
              ),

              child: ProductCard(product: allProducts));
        }
    ),
  );
}

Widget buildJackets(){
  return Container(
    // margin: EdgeInsets.only(top: 15),
    // height: 533,
    // width: 400,
    child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: (100/140),

        ),
        scrollDirection: Axis.vertical,
        itemCount:MyProducts.jacketsList.length ,
        itemBuilder:(context,index){
          final allProducts= MyProducts.jacketsList[index];
          return ProductCard(product: allProducts);
        }
    ),
  );
}

Widget buildSneakers(){
  return Container(
    // margin: EdgeInsets.only(top: 15),
    // height: 533,
    // width: 400,
    child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: (100/140),

        ),
        scrollDirection: Axis.vertical,
        itemCount:MyProducts.sneakersList.length ,
        itemBuilder:(context,index){
          final allProducts= MyProducts.sneakersList[index];
          return ProductCard(product: allProducts);
        }
    ),
  );
}