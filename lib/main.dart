import 'package:ecommerce_heyflutter/pages/cart_details/cart_details.dart';
import 'package:ecommerce_heyflutter/pages/favorite_screen/favorite_screen.dart';
import 'package:ecommerce_heyflutter/pages/home_screen/home_screen.dart';
import 'package:ecommerce_heyflutter/pages/profile_screen/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'providers/favorite_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=> FavoriteProvider()
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
       // title: 'E-Commerce Shop',
        theme: ThemeData(
          colorSchemeSeed: Colors.red  ,
         // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          scaffoldBackgroundColor: Colors.grey.shade100,
          useMaterial3: true,
        ),
        home: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
   int currentIndex=0;
   List screens=[
    HomeScreen(),
    FavoriteScreen(),
    ProfileScreen(),
   ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        backgroundColor: Colors.red,

        title: Text("E-Commerce Shop",style: TextStyle(fontWeight: FontWeight.bold),),

        centerTitle: true,
        actions: [
          IconButton(
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(
                        builder:(context)=> CartDetails()
                    )
                );
              },
              icon: Icon(Icons.add_shopping_cart),
          )
        ],
      ),

      bottomNavigationBar:BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value){

          setState(() {
             currentIndex = value;
          });
        },
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black54,
        items: const[
          BottomNavigationBarItem(
            label: "Home",
              icon: Icon(Icons.home)
          ),
          BottomNavigationBarItem(
              label: "Favorite",
              icon: Icon(Icons.favorite)
          ),
          BottomNavigationBarItem(
              label: "Profile",
              icon: Icon(Icons.person)
          )
        ],
      ) ,
      body: screens[currentIndex],
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
