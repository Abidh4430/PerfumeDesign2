import 'dart:math';
import 'package:flutter/material.dart';

class DescriptionScreen extends StatelessWidget {
  String? imageUrl;
  String? name;
  String? price;
  String? price1;
  String? text;

  DescriptionScreen({super.key, required this.imageUrl, required this.name, required this.price,required this.price1,required this.text});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Description Screen"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child:Column(children: [
            Container(
              height: 300,
              width: 300,
            decoration: BoxDecoration(
              image: DecorationImage(image:AssetImage(imageUrl!)),
              borderRadius: BorderRadius.circular(15)),
            
            ),
            Text(name!,
            style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),

             Text(text!,
            style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,),
             
            ),
            
            Text("price:\$${price1!}",style: TextStyle(fontSize: 34,fontWeight: FontWeight.bold,color: Colors.green),),
            Text("price:\$${price!}",
            style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.red,
              fontSize: 35,fontWeight: FontWeight.bold),),
            SizedBox(height: 30,),
            SizedBox(
              height: 50,
              width: 300,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  
                ),
                onPressed: () {
                  
                },
                child: Text("Buy Now",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              ),
            ),
          ],),
        
      ),
    ));
  }
}