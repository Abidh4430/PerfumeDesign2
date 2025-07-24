import 'dart:math';
import 'package:flutter/material.dart';

class DescriptionScreen extends StatelessWidget {
  String? imageUrl;
  String? name;
  String? price;
  String? price1;

  DescriptionScreen({super.key, required this.imageUrl, required this.name, required this.price,required this.price1});
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
            SizedBox(height: 15),
            Text(name!,
            style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged"
            ,style: TextStyle(fontSize: 18),),
            SizedBox(height: 30,),
            Text("price:\$${price!}",
            style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
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