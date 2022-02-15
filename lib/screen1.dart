import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class screen1 extends StatefulWidget {
  screen1({Key? key}) : super(key: key);

  @override
  State<screen1> createState() => _screen1State();
}

class _screen1State extends State<screen1> {
  HexColor redcolor = HexColor("#E86A12");
  HexColor yellowcolor = HexColor("#FFC914");
  HexColor greencolor = HexColor("#007C00");
  HexColor pinkcolor = HexColor("#F5D4C1");
  HexColor symbolcolor = HexColor("#CD0000");
  HexColor greycolor = HexColor("#F8F8FA");
  HexColor lineargradientcolor1 = HexColor("#FFF4E8");
  HexColor whitecolor = HexColor("#FFFFFF");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.17,
              margin: EdgeInsets.only(bottom: 10),
              width: double.infinity,
              color: pinkcolor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      arrowbuttoncont(),
                      Expanded(
                          child: Text("Pizza",
                              style: TextStyle(
                                  color: Colors.black, fontSize: 20))),
                      cont3(),
                    ],
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                textbuttoncontainer("Non Veg", yellowcolor, whitecolor),
                textbuttoncontainer('Veg', Colors.grey[200], Colors.black),
                textbuttoncontainer(
                    'Pan Tossed', Colors.grey[200], Colors.black),
              ],
            ),
            bigcont(greencolor),
            bigcont(symbolcolor),
            bigcont(greencolor),
            bigcont(greencolor),
          ],
        ),
      ],
    ));
  }

  Widget arrowbuttoncont() {
    return Container(
      margin: EdgeInsets.all(10),
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: whitecolor),
      child: Center(
        child: IconButton(
          padding: EdgeInsets.all(5),
          icon: Icon(Icons.arrow_back_ios_outlined),
          iconSize: 15,
          color: Colors.black,
          onPressed: () {},
        ),
      ),
    );
  }

  Widget textbuttoncontainer(String word, colorcode, textcode) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 50,
      width: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: colorcode),
      child: Center(
          child: Center(
        child: Text(
          word,
          style: TextStyle(color: textcode),
        ),
      )),
    );
  }

  Widget bigcont(colortype) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10, top: 12),
      padding: EdgeInsets.only(left: 20),
      height: 120,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [lineargradientcolor1, whitecolor]),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Margarita",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 15),
                  Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: colortype)),
                    child: Center(
                      child: Container(
                        height: 15,
                        width: 15,
                        decoration: BoxDecoration(
                            color: colortype, shape: BoxShape.circle),
                      ),
                    ),
                  )
                ],
              ),
              Text("Medium | Cheese, onion and "),
              Text("tomato pure"),
              Row(
                children: [
                  Text(
                    "\$12",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 30,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    color: redcolor),
                child: Center(
                    child: Center(
                  child: Text(
                    "View",
                    style: TextStyle(color: whitecolor),
                  ),
                )),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget cont3() {
    return Container(
      margin: EdgeInsets.all(10),
      height: 50,
      width: 90,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: yellowcolor),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 30,
            width: 10,
            child: Center(
              child: IconButton(
                padding: EdgeInsets.all(5),
                icon: Icon(Icons.category),
                iconSize: 20,
                color: Colors.black,
                onPressed: () {},
              ),
            ),
          ),
          SizedBox(width: 5),
          Container(
            child: Center(
              child: Text("1"),
            ),
            height: 25,
            width: 25,
            decoration:
                BoxDecoration(color: whitecolor, shape: BoxShape.circle),
          ),
        ],
      ),
    );
  }
}
