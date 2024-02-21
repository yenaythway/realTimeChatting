import 'package:flutter/material.dart';
import 'package:real_time_chatting/Pages/home_page.dart';
import 'package:real_time_chatting/Pages/sign_in_page.dart';
import 'package:real_time_chatting/Pages/sign_up_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    bool isLogin = false;
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.black,
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Home(),
    );
  }
}
