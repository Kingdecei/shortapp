import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled28/Screens/cartpage.dart';
import 'package:untitled28/componenets/groceceryitemfile.dart';
import 'package:untitled28/model/cart_model.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);
  @override
  State<homepage> createState() => _homepageState();
}
class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) {
                  return Cartpage();
                },
            )
      ),
        backgroundColor: Colors.green,
        child: const Icon(Icons.shopping_bag),
      ),
      body:SafeArea(child: Column(
        children:  [
          const SizedBox(height: 20,),
          const Padding(padding: EdgeInsets.symmetric(horizontal: 23),
          child: Text("Good morning")),
          const Padding(padding: EdgeInsets.symmetric(horizontal: 23),
              child: Text("let's take your order",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold
              ),
              ),
          ),
          const SizedBox(height: 24,),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Divider(
            ),
          ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SizedBox(height: 20,),
        ),
         const Padding(padding: EdgeInsets.all(12),
             child: Text("Items you Might Like"),
         ),
         Expanded(
             child: Consumer<CartModel>(
           builder: (context, value, child)
           {
             return GridView.builder(
                 itemCount: value.shopItems.length,
                 gridDelegate:
             const SliverGridDelegateWithFixedCrossAxisCount(
                 crossAxisCount: 2,
                     childAspectRatio: 1/1.1
             ),
                 itemBuilder: (context, index)
                 {
                   return Groceryitem(
                     ItemName: value.shopItems[index][0],
                     ItemPrice: value.shopItems[index][1],
                     imagepath: value.shopItems[index][2],
                     color: value.shopItems[index][3],
                     onPressed: () {
                       Provider.of<CartModel>(
                           context, listen:
                       false).addItemToCart(index);
                     },
                   );
                 },
             );
           }
           ,)
         )
        ],
      ),
      ),
    );
  }
}
