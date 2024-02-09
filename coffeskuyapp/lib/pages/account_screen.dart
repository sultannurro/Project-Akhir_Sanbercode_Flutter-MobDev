import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:coffeskuyapp/routes/route_name.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AccountScreen(),
    );
  }
}

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Build your yet another screen widget here
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Image.asset("assets/img/login_top.png"),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/img/foto_profil.jpeg"),
                ),
                Text("Halo"),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              ElevatedButton(
              onPressed: () {
                Get.toNamed(RouteName.home_screen);
              },
              style: ElevatedButton.styleFrom(elevation: 0,backgroundColor: Colors.transparent, foregroundColor: Colors.blue),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.home,
                    color:  Colors.grey,
                  ),
                  Text(
                    'Home',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ) ,
              ),
              ElevatedButton(
              onPressed: () {
                Get.toNamed(RouteName.about_screen);
              },
              style: ElevatedButton.styleFrom(elevation: 0,backgroundColor: Colors.transparent, foregroundColor: Colors.blue),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.home,
                    color:  Colors.grey,
                  ),
                  Text(
                    'About Us',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ) ,
              ),
              ElevatedButton(
              onPressed: () {
                Get.toNamed(RouteName.account_screen);
              },
              style: ElevatedButton.styleFrom(elevation: 0,backgroundColor: Colors.transparent, foregroundColor: Colors.blue),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.person,
                    color:  Colors.blue,
                  ),
                  Text(
                    'Account',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ],
              ) ,
              ),
            ],
          ),
        ),
      ),
    );
  }
}