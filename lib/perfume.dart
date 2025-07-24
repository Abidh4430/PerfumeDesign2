import 'package:flutter/material.dart';
import 'package:perfume_design2/description.dart';


class PerfumeDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
   List<Map> perfumeList = [
    {
      "image":"assets/images/deanna-alys-xQwRvghauaU-unsplash.jpg",
      "name":"The One For Men",
      "price":"AED510.00",
      "price1":"AED339.00",
    },
    {
      "image":"assets/images/fernando-andrade-potCPE_Cw8A-unsplash.jpg",
      "name":"Acqua Di Gio Profondo",
      "price":"AED465.00",
      "price1":"AED339.00",
    },
    {
      "image":"assets/images/jeroen-den-otter-2b0JeJTEclQ-unsplash.jpg",
      "name":"Sauvage",
      "price":"AED590.00",
      "price1":"AED450.00",
    },
    {
      "image":"assets/images/jessica-weiller-So4eFi-d1nc-unsplash.jpg",
      "name":"Grain de Poudre",
      "price":"AED995.00",
      "price1":"AED585.00",
    },
  ];


    return Scaffold(
      // backgroundColor: Colors.green,
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("ZAHAAR"),
        centerTitle: true,
        actions: [
          Icon(Icons.chat_rounded),
          SizedBox(width: 5),
          Stack(children: [
            Icon(Icons.shopping_bag),
            Positioned(
              top: 12,
              right: 3,
              child: CircleAvatar(
              radius: 6,
              backgroundColor: Colors.orange,
              child: Text("1",
              style: TextStyle(
                color: Colors.white,
                fontSize: 5,
                fontWeight: FontWeight.bold
          ),),
          ),),
          ],)
        ],
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 0,
          mainAxisSpacing: 0,
          childAspectRatio: 0.6,
        ),
        itemCount: perfumeList.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DescriptionScreen(
                                  imageUrl: perfumeList[index]["image"],
                                  name: perfumeList[index]["name"],
                                  price: perfumeList[index]["price"], price1: perfumeList[index]['price1'],)));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(perfumeList[index]["image"]),
                          fit: BoxFit.cover,
                        ),
                      ),
                      height: 300, 
                      width: double.infinity,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  perfumeList[index]["name"],
                  style: TextStyle(fontWeight: FontWeight.bold),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  '\$${perfumeList[index]["price"]}',
                  style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.red),
                ),
                Text(
                  '\$${perfumeList[index]["price1"]}',
                  style: TextStyle(fontWeight: FontWeight.bold)
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}