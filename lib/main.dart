import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          toolbarHeight: 60,
          backgroundColor: Colors.grey[200],
          elevation: 0,
          leading: Image.asset("assets/images/menu.png"),
          actions: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              margin: EdgeInsets.all(10),
              child: Image.asset("assets/images/search.png"),
            ),
          ],
        ),
        body: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Shop",
                  style: TextStyle(
                    letterSpacing: 1,
                    fontSize: 20,
                  ),
                ),
                Text(
                  "Anthropologie",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildFlatButton("Home Decore", isSelected: true),
                buildFlatButton("Bath & Body"),
                buildFlatButton("Beauty"),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[300],
                      spreadRadius: 1,
                      blurRadius: 10,
                    )
                  ]),
              child: Column(
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buildColumnAtTpo("Candels", isSelected: true),
                      buildColumnAtTpo("vases"),
                      buildColumnAtTpo("bins"),
                      buildColumnAtTpo("Floral"),
                      buildColumnAtTpo("Decor"),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 1,
                        ),
                        buildColumnWithRow("1", "Elemental Tin Candel", "30"),
                        buildColumnWithRow("2", "Summer Candel", "25"),
                        buildColumnWithRow("3", "Winter Candel", "45"),
                        buildColumnWithRow("4", "dummy Candel", "50"),
                        buildColumnWithRow("5", "dummy Candel", "60"),
                        buildColumnWithRow("6", "dummy Candel", "120"),
                      ],
                    ),
                  ),
                  LineBar(),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Text(
                          "HollDay Special",
                          style: TextStyle(fontSize: 20, letterSpacing: 1),
                        ),
                        Spacer(),
                        Text(
                          "View All",
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                   SingleChildScrollView(
                       physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.vertical,

                    child: Row(
                      children: [
                        Container(
                          height: 80,
                          width: 60,
                          color: Colors.white,
                          child: Row(
                            children: [
                              
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset("assets/images/images7.jpg")),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Coconut Milk bath"),
                                  Text("16 oz",style: TextStyle(color: Colors.grey,fontSize: 20),),
                                  Spacer(),
                                  Text(
                                    "\$28",
                                    style: TextStyle(
                                        fontSize: 5,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ],
                              ) ,                             
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }

  Padding buildColumnWithRow(String img, String titel, String price) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: 130,
            height: 130,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "assets/images/images$img.jpg",
                  fit: BoxFit.cover,
                )),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            titel,
            style: TextStyle(fontSize: 10),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "\$ $price",
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }

  Column buildColumnAtTpo(String text, {bool isSelected = false}) {
    return Column(children: [
      Text(text,
          style: TextStyle(
              color: isSelected ? Colors.black : Colors.grey, fontSize: 18)),
      SizedBox(
        height: 5,
      ),
      if (isSelected)
        Container(
          height: 5,
          width: 5,
          decoration: BoxDecoration(
            color: Colors.black,
            shape: BoxShape.circle,
          ),
        ),
    ]);
  }

  FlatButton buildFlatButton(String text, {bool isSelected = false}) {
    return FlatButton(
      onPressed: () {
        print("Button pressed");
      },
      child: Text(
        text,
        style: TextStyle(
            color: isSelected ? Colors.white : Colors.black, fontSize: 15),
      ),
      shape: StadiumBorder(),
      color: isSelected ? Colors.pink[200] : Colors.grey[500],
    );
  }
}

class LineBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 5,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(left: 35),
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
            )),
        child: Container(
            height: 5,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
              ),
            )));
  }
}
