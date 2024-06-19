import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/components/shoe_tile.dart';
import 'package:flutter_application_1/models/shoe.dart';
import 'package:flutter_application_1/models/cart.dart';


class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder:(context, value, child) => Column(
      children: [
        //nav
        Container(
          padding: const EdgeInsets.all(3),
          margin: const EdgeInsets.symmetric(horizontal:15),
          decoration: BoxDecoration(
            color: Colors.grey[200], 
            borderRadius: BorderRadius.circular(8)
            ),
          child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const[
              Text(
                'Hi, User',
                style: TextStyle(color: Colors.black,
                fontSize: 25),
              ),
              Icon(
                Icons.person_3,
                color: Color.fromARGB(255, 66, 59, 59),
                ),
            ],
          ),
        ),

        //favorite
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const[
              Text(
                'Top Shoes',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.black
                )
              ),
            ],
          ),
        ),

        const SizedBox(height: 10),

        //list of shoes
        Expanded(
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {

              //get a shoe
              Shoe shoe = value.getShoeList()[index];

                //return the shoe
              return ShoeTile(
                shoe: shoe,
            );

          },
        ),
        ),

        const Padding(
          padding: const EdgeInsets.only(top: 25.0, left: 25, right: 25),
          child: Divider(
            color: Colors.white,
          ),
        )
      ],
      )
    );
  }
}