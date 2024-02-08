import 'package:coffeskuyapp/pages/home_screen.dart';
import 'package:coffeskuyapp/pages/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:coffeskuyapp/pages/splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';

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
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.jaldiTextTheme(
          Theme.of(context).textTheme
        )

      ),

      home: LoginScreen(),
      
//      getPages: PageRouteApp.pages,
//      routes: {
//        '/search': (context) => SearchScreen(),
//        '/home': (context) => HomeScreen(),
//        '/akun':(context) => AccountPage(),
//      },
    );
  }
}
