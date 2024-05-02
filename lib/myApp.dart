import 'package:baking_house/userinterface/paginas/login.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 252, 230, 237),
      ),
      home: const Login()
    );
  }
}
