import 'package:ecommerce_heyflutter/pages/favorite_screen/favorite_screen.dart';
import 'package:ecommerce_heyflutter/pages/home_screen/home_screen.dart';
import 'package:ecommerce_heyflutter/pages/profile_screen/profile_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
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
        title: Text("E-Commerce Shop"),
        centerTitle: true,
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
