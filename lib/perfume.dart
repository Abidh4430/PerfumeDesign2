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
      "text":"The One for Men by Dolce&Gabbana is a Woody Spicy fragrance for men. The One for Men was launched in 2008. The nose behind this fragrance is Olivier Polge. Top notes are Grapefruit, Coriander and Basil; middle notes are Ginger, Cardamom and Orange Blossom; base notes are Amber, Tobacco and Cedar.",
    },
    {
      "image":"assets/images/fernando-andrade-potCPE_Cw8A-unsplash.jpg",
      "name":"Acqua Di Gio Profondo",
      "price":"AED465.00",
      "price1":"AED339.00",
      "text":"Acqua di Giò Profondo Parfum by Giorgio Armani is a Aromatic Aquatic fragrance for men. This is a new fragrance. Acqua di Giò Profondo Parfum was launched in 2024. Top notes are Marine notes and Green Mandarin; middle note is Mimosa; base notes are Patchouli and Labdanum.",
    },
    {
      "image":"assets/images/jeroen-den-otter-2b0JeJTEclQ-unsplash.jpg",
      "name":"Sauvage",
      "price":"AED590.00",
      "price1":"AED450.00",
      "text":"Sauvage unfurls a scent of a rare intensity, like a fine liqueur with exceptional ingredients that pushes all the limits. Inspired by wide-open spaces, this pioneer continues to reach for the summits, now intertwining its destiny with that of Baccarat in a bottle reinterpreted with extraordinary luminosity.",
    },
    {
      "image":"assets/images/jessica-weiller-So4eFi-d1nc-unsplash.jpg",
      "name":"Grain de Poudre",
      "price":"AED995.00",
      "price1":"AED585.00",
      "text":"Grain de Poudre by Yves Saint Laurent is a Leather fragrance for women and men. Grain de Poudre was launched in 2019. The nose behind this fragrance is Quentin Bisch.An oriental spicy scent fusing an aromatic sage with crispy violet leaf. The scent of GRAIN DE POUDRE translates this bold alchemy by draping the familiar, powdery fragrance of Violet in the coolness of Sage.",
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
                                  price: perfumeList[index]["price"],
                                   price1: perfumeList[index]['price1'],
                                    text: perfumeList[index]['text'],)));
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