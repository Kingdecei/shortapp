import 'package:flutter/material.dart';


    class Groceryitem extends StatelessWidget {
  final String ItemName;
  final String ItemPrice;
  final String imagepath;
  final color;
  void Function()? onPressed;

       Groceryitem ({
        super.key,
        required this.ItemName,
        required this.ItemPrice,
        required this.imagepath,
        required this.color,
         required this.onPressed,

      });

      @override
      Widget build(BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: color[100],
              borderRadius: BorderRadius.circular(12)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [

                  Expanded(
                    child: Image.asset(imagepath,
                    ),
                  ),
                Text(ItemName),
                MaterialButton(
                    onPressed: onPressed,
                color: color[800],
                    child: Text( "N$ItemPrice",
                    style: const TextStyle
                      (
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                    ),

                )

              ],
            ),

          ),
        );

      }
    }
    