import 'package:drivelar_hand_off/views/DashboardPage_2.dart';
import 'package:drivelar_hand_off/views/SignUpSignInApp.dart';
import 'package:drivelar_hand_off/views/loginScreen.dart';
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
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: LoginScreen(),
      routes: {
        'Lo': (context) => LoginScreen(),
        '/dashboard': (context) => DashboardPage(),
      },
    );
  }
}
