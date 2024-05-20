import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:news_app/screens/auth.dart';
import 'package:news_app/screens/log_in_screens.dart';
import 'package:news_app/screens/signup.dart';
import 'package:news_app/services/news_services.dart';
import 'package:news_app/views/home_view.dart';
import 'package:news_app/views/splash.dart';
import 'package:news_app/widgets/news_item.dart';
import 'package:dio/dio.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Auth(),
      routes: {
        '/': (context) => const Auth(),
        ' HomeView': (context) => const HomeView(),
        'signup': (context) => const Signup(),
        'Login': (context) => const Login(),
      },
    );
  }
}
