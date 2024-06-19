import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/shoe.dart';

class Cart extends ChangeNotifier{
  //list of shoes
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Classic Clog',
      price: '1.030.000',
      description: "Created with the brand's signature rubber design for a lightweight and versatile footwear option" ,
      imagePath: 'lib/images/crocs.jpeg',
      ),

    Shoe(
      name: 'Adidas Samba Original',
      price: '2.230.000',
      description: 'Born on the pitch, the Samba is a timeless icon of street style' ,
      imagePath: 'lib/images/adidas.jpeg',
      ),  

    Shoe(
      name: 'Onitsuka Tiger - Mexico Slip On',
      price: '1.850.000',
      description: 'Now with a slip-on construction for ease of wear and comfort' ,
      imagePath: 'lib/images/onitsuka.jpeg',
      ), 

    Shoe(
      name: 'nike',
      price: '1.397.000',
      description: 'Nike racing shoes are super light, with little to no heel drop',
      imagePath: 'lib/images/nike.jpeg',
      ), 
      
  ];
  
  List<Shoe> userCart = [];

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  List<Shoe> getUserCart(){
    return userCart;
  }

}