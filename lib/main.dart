import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:messgas/bloc_observer/my_bloc_observer.dart';
import 'package:messgas/module/conversation_screen/conversation_screen.dart';
import 'package:messgas/module/conversation_screen/cubit.dart';
import 'package:messgas/module/login_screen.dart';
import 'package:messgas/shared/component/constant/constant.dart';



void main()async{
  Bloc.observer = MyBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

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
      home:ChatScreen(),
    );
  }
}
