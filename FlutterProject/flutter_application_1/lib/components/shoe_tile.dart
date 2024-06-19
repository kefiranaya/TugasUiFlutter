import 'package:flutter/material.dart';

import 'package:flutter_application_1/models/shoe.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
  ShoeTile({super.key, required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration( 
      color: Colors.grey[200],
      borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //shoe pic
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(shoe.imagePath),
          ),


          //desc
          Text(
            shoe.description, 
            style: const TextStyle(
              color: Color.fromARGB(255, 103, 99, 99),
              fontSize: 15,
              )
          ),

          //price + details
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    //shoe name
                    Text(
                    shoe.name, 
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      )
                    ),
            
                    //price
                    Text(
                      '\Rp.' + shoe.price,
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        
                      ),
                    )
                ],
                ),
              ],
            ),
          )

        ],
      ),
    );
  }
}