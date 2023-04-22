import 'package:flutter/material.dart';
class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconTheme: const IconThemeData(color: Colors.black),
    ),
      body: Column(
        children: [
          const Text("About us", style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold
          ),),
          ListTile(
            leading: const Icon(
              Icons.star_outline,
              color: Colors.black,
            ),
            trailing: const Icon(Icons.arrow_forward),
            title: const Text("Rate the App",
              style: TextStyle(color: Colors.grey, fontSize: 17),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.emoji_people,
              color: Colors.black,
            ),
            trailing: const Icon(Icons.arrow_forward),
            title: const Text("Like us on Facebook",
              style: TextStyle(color: Colors.grey, fontSize: 17),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.construction,
              color: Colors.black,
            ),
            trailing: const Icon(Icons.arrow_forward),
            title: const Text("Report a Bug",
              style: TextStyle(color: Colors.grey, fontSize: 17),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.star,
              color: Colors.black,
            ),
            title: const Text("Enable Notifications",
              style: TextStyle(color: Colors.grey, fontSize: 17),
            ),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
