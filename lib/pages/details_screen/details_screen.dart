import 'package:ecommerce_heyflutter/widgets/available_size.dart';
import 'package:flutter/material.dart';

import '../../models/product.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Details'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 36,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             Container(
               height: 230,
               width: 230,
               decoration: BoxDecoration(
                 shape: BoxShape.circle,
                 color: Colors.red.shade100,
               ),
               child: Image.asset(product.image,fit: BoxFit.fill,),
             )
            ],
          ),
          SizedBox(height: 36,),
          Container(
            padding: EdgeInsets.all(20),
            height: 400,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
             borderRadius: BorderRadius.only(
               topLeft: Radius.circular(40),
               topRight: Radius.circular(40)
             )
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      product.name.toUpperCase(),
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                        '\$''${product.price}',
                    style: TextStyle(
                       fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                    )
                  ],
                ),
                SizedBox(height: 15,),
                Text(
                    product.description,
                textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Available Size",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8,),
                Row(
                  children: [
                    AvailableSize(size: "US 6"),
                    AvailableSize(size: "US 7"),
                    AvailableSize(size: "US 8"),
                    AvailableSize(size: "US 9"),
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Available Color",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8,),
                Row(
                  children: [
                   CircleAvatar(
                     radius: 16,
                     backgroundColor: Colors.blue,
                   ),
                    SizedBox(width: 8,),
                    CircleAvatar(
                      radius: 16,
                      backgroundColor: Colors.red,
                    ),
                    SizedBox(width: 8,),
                    CircleAvatar(
                      radius: 16,
                      backgroundColor: Colors.yellow,
                    ),
                  ],
                )


              ],
            ),
          )
        ],
      ),
      bottomSheet: BottomAppBar(
        color: Colors.red,
     child:Container(
       padding: EdgeInsets.symmetric(horizontal: 10),
       alignment: Alignment.center,
       width: double.infinity,
       height: MediaQuery.of(context).size.height / 10,
       decoration: BoxDecoration(
           color: Colors.red ,
         borderRadius: BorderRadius.only(
           topRight: Radius.circular(10),
           topLeft: Radius.circular(10),
         )
       ),
       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           Text('\$''${product.price}',
           style: TextStyle(
             fontSize: 34,
             fontWeight: FontWeight.bold,
             color: Colors.white,
           ),
           ),
           ElevatedButton.icon(onPressed:(){},
               icon: Icon(Icons.send),
               label: Text("Add to Cart"),

           )
         ],
       ),
     ) ,
      ),
    );
  }
}
