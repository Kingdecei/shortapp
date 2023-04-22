import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled28/About.dart';
import 'package:untitled28/model/cart_model.dart';
import 'package:untitled28/Screens/settings.dart';

class Cartpage extends StatelessWidget {
  const Cartpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
          child: ListView(
            children: [
              SizedBox(
                child: DrawerHeader(
                    decoration: const BoxDecoration(
                      color: Colors.lightBlueAccent,
          borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20))
                    ),
                    child: Column(
                  children: [
                    const Text("Jerry Green",style: TextStyle(
                      fontWeight: FontWeight.w700,
                          fontSize: 18
                    ),),
                   CircleAvatar(child:
                       ClipOval(
                         child: Image.asset("lib/images/pope.jpg",
                           width: 280,
                           height: 280,),
                   )
                    )
                  ],
                )),
              ),
              ListTile(
                leading: const Icon(
                  Icons.public,
                  color: Colors.black,
                ),
                title: const Text("About",
                  style: TextStyle(color: Colors.grey),
                ),
                onTap: () => Navigator.pushReplacement(
                    context, MaterialPageRoute(
                    builder: (context){
                      return const About();})),
              ),
              ListTile(
                leading: const Icon(
                  Icons.settings,
                  color: Colors.black,
                ),
                title: const Text("Settings",
                  style: TextStyle(color: Colors.grey),
                ),
                onTap: () => Navigator.pushReplacement(
                    context, MaterialPageRoute(
                    builder: (context){
                      return const Settings();})),
              ),
                ListTile(
                leading: const Icon(
                  Icons.money,
                  color: Colors.black,
                ),
                 title: const Text("payment",
                 style: TextStyle(color: Colors.grey),
                 ),
                 onTap: () {},
              ),
              ListTile(
                leading: const Icon(
                  Icons.star,
                  color: Colors.black,
                ),
                title: const Text("Discount offers",
                  style: TextStyle(color: Colors.grey),
                ),
                onTap: () {},
              ),


              ListTile(
                leading: const Icon(
                  Icons.person,
                  color: Colors.black,
                ),
                title: const Text("Support",
                  style: TextStyle(color: Colors.grey),
                ),
                onTap: () {},
              )
            ],
          ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Consumer<CartModel>(
          builder: (context, value, child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          const Padding(padding: EdgeInsets.symmetric(horizontal: 23),
            child: Text("My CART",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          Expanded(
              child: ListView.builder(
                itemCount: value.cartItems.length,
            padding: EdgeInsets.all(12),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  decoration: BoxDecoration(color:
                  Colors.grey[200],
                    borderRadius: BorderRadius.circular(8)
                  ),
                  child: ListTile(
                    leading: Image.asset(value.cartItems[index][2]),
                    title: Text(value.cartItems[index][0]),
                    subtitle: Text("\N" + value.cartItems[index][1]),
                    trailing: IconButton(
                        icon: Icon(Icons.cancel),
              onPressed: () =>
                  Provider.of<CartModel>(
              context, listen: false).
                  removeItemFromCart(index)),
                  ),
                ),
              );
            },
          ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                    borderRadius: BorderRadius.circular(12)
              ),
              padding: const EdgeInsets.all(24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Column(
                  children: [
                    const Text("Total price",
                      style: TextStyle(color: Colors.white,
                      fontSize: 10,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Text( "N${value.calculateTotal()}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.green.shade100)
                  ),
                    child:
                Row(
                  children: const [
                    Text("Pay Now",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios,
                    size: 16,
                      color: Colors.white,
                    )
                  ],
                ))
              ],)
            ),
          ),
        ],
        );
      }
      )
    );
  }
}
