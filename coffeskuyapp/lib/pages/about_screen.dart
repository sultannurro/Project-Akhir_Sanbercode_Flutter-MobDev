import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:coffeskuyapp/routes/route_name.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Build your yet another screen widget here
    return Scaffold(
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
                    color:  Colors.blue,
                  ),
                  Text(
                    'About Us',
                    style: TextStyle(
                      color: Colors.blue,
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
                    color:  Colors.grey,
                  ),
                  Text(
                    'Account',
                    style: TextStyle(
                      color: Colors.grey,
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