import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:messgas/module/conversation_screen.dart';
import 'package:messgas/module/login_screen.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        appBarTheme: AppBarTheme(
          systemOverlayStyle:
              SystemUiOverlayStyle(statusBarColor: Colors.white),
        ),
      ),
      home:LoginScreen(),
    );
  }
}
