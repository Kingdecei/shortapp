import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled28/Screens/intro%20page.dart';
import 'package:untitled28/model/cart_model.dart';
import 'package:untitled28/Screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return   ChangeNotifierProvider(
      create: (context) => CartModel(),
      child:  const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      home:  SplashScreen(),
    ),
    );
  }
}

