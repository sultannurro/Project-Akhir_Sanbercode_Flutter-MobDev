import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';


Color mainColor = const Color(0x402625);
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentTab = 0;
  final List<Widget> screens = [
    HomeWidget(), // Replace with actual screen for tab 0
    AnotherScreen(), // Replace with actual screen for tab 1
    YetAnotherScreen(), // Replace with actual screen for tab 2
  ];

  late Widget currentScreen;

  @override
  void initState() {
    super.initState();
    currentScreen = screens[0]; // Set the initial screen
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: PageStorageBucket(),
        child: currentScreen,
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              buildBottomNavItem(Icons.home, 0, "Home"),
              buildBottomNavItem(Icons.bookmark, 1, "Bookmark"),
              buildBottomNavItem(Icons.person, 2, "Account"),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildBottomNavItem(IconData icon, int index, String label) {
    return MaterialButton(
      minWidth: 40,
      onPressed: () {
        setState(() {
          currentTab = index;
          currentScreen = screens[index];
        });
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: currentTab == index ? Colors.blue : Colors.grey,
          ),
          Text(
            label,
            style: TextStyle(
              color: currentTab == index ? Colors.blue : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}


final List<Container> containerList = [
  Container(
    width: 500,
    height: 400,
    color: Colors.grey,
    child: Text('hai'),
  ),
  Container(
    width: 500,
    height: 400,
    color: Colors.grey,
    child: Text('halo'),
  )
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
                  Image.asset(
                    "assets/img/gojek.png",
                    height: 50,
                    width: 50,
                  ),
                  SizedBox(       
                    height: 16,
                  ), 
                  Text(
                    "Digital Marketing",
                    style: titleStyle(),
                  ),             
                  SizedBox(
                    height: 16,
                  ),
                  Text(           
                    "1-3 Year Experience",
                  ), 
                  SizedBox(       
                    height: 16,
                  ),
                  Row(           
                    children: [
                      Text(
                        "FullTime",
                          style: positionText(),
                      ), 
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        "Senior",
                        style: positionText(),
                      ), 
                    ],
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
                  Image.asset(
                    "assets/img/shopee.png",
                    height: 20,
                    width: 20,
                  ),
                  SizedBox(       
                    height: 16,
                  ), 
                  Text(
                    "Content Creator",
                    style: titleStyle(),
                  ),             
                  SizedBox(
                    height: 16,
                  ),
                  Text(           
                    "1-3 Year Experience",
                  ), 
                  SizedBox(       
                    height: 16,
                  ),
                  Row(           
                    children: [
                      Text(
                        "FullTime",
                          style: positionText(),
                      ), 
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        "Internship",
                        style: positionText(),
                      ), 
                    ],
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
                  Image.asset(
                    "assets/img/bukalapak.png",
                    height: 20,
                    width: 20,
                  ),
                  SizedBox(       
                    height: 16,
                  ), 
                  Text(
                    "Front End Developer",
                    style: titleStyle(),
                  ),             
                  SizedBox(
                    height: 16,
                  ),
                  Text(           
                    "1-3 Year Experience",
                  ), 
                  SizedBox(       
                    height: 16,
                  ),
                  Row(           
                    children: [
                      Text(
                        "FullTime",
                          style: positionText(),
                      ), 
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        "Senior",
                        style: positionText(),
                      ), 
                    ],
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
                  Image.asset(
                    "assets/img/blibli.png",
                    height: 20,
                    width: 20,
                  ),
                  SizedBox(       
                    height: 16,
                  ), 
                  Text(
                    "UI/UX Designer",
                    style: titleStyle(),
                  ),             
                  SizedBox(
                    height: 16,
                  ),
                  Text(           
                    "1-3 Year Experience",
                  ), 
                  SizedBox(       
                    height: 16,
                  ),
                  Row(           
                    children: [
                      Text(
                        "FullTime",
                          style: positionText(),
                      ), 
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        "Senior",
                        style: positionText(),
                      ), 
                    ],
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

class HomeWidget extends StatelessWidget {
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

class AnotherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Build your another screen widget here
    return Center(child: Text("Another Screen"));
  }
}

class YetAnotherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Build your yet another screen widget here
    return Center(child: Text("Yet Another Screen"));
  }
}

// Place jobs_item, positionText, and titleStyle functions here
