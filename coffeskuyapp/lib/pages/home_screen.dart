import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:coffeskuyapp/routes/route_name.dart';
import 'package:firebase_auth/firebase_auth.dart';
class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
    if (auth.currentUser != null){
      print(auth.currentUser!.email);
    }
    return Scaffold(
      body: PageStorage(
        bucket: PageStorageBucket(),
        child: currentScreen(),
      ),
      bottomNavigationBar: BottomAppBar(
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
                    color:  Colors.blue,
                  ),
                  Text(
                    'Home',
                    style: TextStyle(
                      color: Colors.blue,
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


final List<Container> containerList = [
  Container(
    width: 500,
    height: 400,
    color: Colors.grey,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Image.asset(
        "assets/img/coffe1.jpg",
        height: 150,
        width: 200,
        ),
      Text('Bagi Kopi'),
      Text('Jalan Buah Batu')
    ],)
  ),
  Container(
    width: 500,
    height: 400,
    color: Colors.grey,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Image.asset(
        "assets/img/coffe1.jpg",
        height: 150,
        width: 200,
        ),
      Text('Bagi Kopi'),
      Text('Jalan Buah Batu')
    ],)
  ),
  Container(
    width: 500,
    height: 400,
    color: Colors.grey,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
      Image.asset(
        "assets/img/coffe1.jpg",
        height: 150,
        width: 200,
        ),
      Text('Bagi Kopi'),
      Text('Jalan Buah Batu')
    ],)
  ),
];

final List<Widget> containerSliders = containerList
    .map((item) => Container(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    item,
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                      ),
                    ),
                  ],
                )),
          ),
        ))
    .toList();

Container near_item(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(5),
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          crossAxisCount: 2,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Color(0xffE9FFEB),
                borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(       
                    height: 7,
                  ),
                  Image.asset(
                    "assets/img/coffe1.jpg",
                    height: 90,
                    width: 150,
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    "Bagi Kopi Buah Batu",
                    style: titleStyle(),
                  ),             
                  SizedBox(
                    height: 4,
                  ),
                  Text(           
                    "Jalan Dago",
                  ), 
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Color(0xffFFFEBE7),
                borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(       
                    height: 7,
                  ),
                  Image.asset(
                    "assets/img/coffe1.jpg",
                    height: 90,
                    width: 150,
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    "Bagi Kopi Buah Batu",
                    style: titleStyle(),
                  ),             
                  SizedBox(
                    height: 4,
                  ),
                  Text(           
                    "Jalan Dago",
                  ), 
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Color(0xffFFFE2EB),
                borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(       
                    height: 7,
                  ),
                  Image.asset(
                    "assets/img/coffe1.jpg",
                    height: 90,
                    width: 150,
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    "Bagi Kopi Buah Batu",
                    style: titleStyle(),
                  ),             
                  SizedBox(
                    height: 4,
                  ),
                  Text(           
                    "Jalan Dago",
                  ), 
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Color(0xffFFFEBE7),
                borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(       
                    height: 7,
                  ),
                  Image.asset(
                    "assets/img/coffe1.jpg",
                    height: 90,
                    width: 150,
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    "Bagi Kopi Buah Batu",
                    style: titleStyle(),
                  ),             
                  SizedBox(
                    height: 4,
                  ),
                  Text(           
                    "Jalan Dago",
                  ), 
                ],
              ),
            ),
          ],
        ),
    );
  }
  TextStyle positionText(){
    return TextStyle(color: Colors.grey, fontWeight: FontWeight.w400);
  }
  TextStyle titleStyle(){
    return TextStyle(fontSize: 15, fontWeight: FontWeight.w400);
  }
  TextStyle subTitle() => TextStyle(fontWeight: FontWeight.w500);

class currentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Container(
          padding: EdgeInsets.all(16),
          color: Colors.white,
          child: ListView(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 70, left: 100), //apply padding to all four sides
                    child: Text(
                    "COFFESKUY",
                    style: GoogleFonts.jaldi(
                      textStyle: TextStyle(fontSize: 32, 
                          fontWeight: FontWeight.w600,
                          color: Colors.brown,),
                    ),
                    ),
                  ),
                  Icon(
                    Icons.notifications,
                    color: Colors.brown,
                    size: 32.0,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 20,
                height: 50.0,
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: 
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'search caffe of coffeshop',
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(vertical: 12.0),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Recommended for you",
                  style: GoogleFonts.inter(
                      textStyle: TextStyle(fontSize: 19, 
                          fontWeight: FontWeight.w500,
                          color: Colors.brown,),
                    ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: CarouselSlider(
                    options: CarouselOptions(
                    aspectRatio: 16/9,
                    enlargeCenterPage: false,
                    enableInfiniteScroll: false,
                    initialPage: 1,
                    autoPlay: false,
                    padEnds : false,
                    ),
                  items: containerSliders,
                  )
                )
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Caffe's near you",
                  style: GoogleFonts.inter(
                      textStyle: TextStyle(fontSize: 19, 
                          fontWeight: FontWeight.w500,
                          color: Colors.brown,),
                    ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              near_item(context)
            ],
          ),
        ),
      ),
    );
  }
}

// Place jobs_item, positionText, and titleStyle functions here
