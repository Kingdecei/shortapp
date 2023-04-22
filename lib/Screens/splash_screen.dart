import 'package:flutter/material.dart';
import 'package:untitled28/Screens/intro%20page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3),(){
      Navigator.push(context, MaterialPageRoute(builder: (context) => const intropage()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
          Image.asset('lib/images/splash_background_Image.png'),
            Positioned(
             top: 260,
              left: 93,
              child: Image.asset('lib/images/logo12.png'),),

          ],
        ),
      ),
    );
  }
}
