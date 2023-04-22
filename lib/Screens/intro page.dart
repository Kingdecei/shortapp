import 'package:flutter/material.dart';
import 'package:untitled28/Screens/homepage.dart';
class intropage extends StatefulWidget {
  const intropage({Key? key}) : super(key: key);

  @override
  State<intropage> createState() => _intropageState();
}
class _intropageState extends State<intropage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40, top: 80, bottom: 80),
            child: Image.asset("lib/images/shawama.jpg"),
          ),
          const Text("We do everything delivery",
          textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold
            ),

          ),
          const Spacer(),
          const Text("welcome home",
          style: TextStyle(
            color: Colors.grey
          ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () => Navigator.pushReplacement(
            context, MaterialPageRoute(
    builder: (context){
      return const homepage();})),
            child: Container(
            decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(18),
            ),
            child: const Padding(
              padding: EdgeInsets.all(13.0),
              child: Text("eat now",

              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w300
              ),
              ),
            ),
          ),
          ),
          const Spacer()


        ],
      ),
    );
  }
}
