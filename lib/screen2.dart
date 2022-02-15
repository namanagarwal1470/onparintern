import 'package:flutter/material.dart';
import 'package:onparintern/screen1.dart';
import 'package:hexcolor/hexcolor.dart';

class screen2 extends StatefulWidget {
  screen2({Key? key}) : super(key: key);

  @override
  State<screen2> createState() => _screen2State();
}

class _screen2State extends State<screen2> {
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
          children: [
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                arrowbuttoncont(),
                cont3(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text("Veggie Exotic Pizza",
                        style: TextStyle(fontWeight: FontWeight.bold))),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text("Choose Size",
                        style: TextStyle(fontWeight: FontWeight.bold))),
                textbuttoncontainer(
                    "Required", yellowcolor, Colors.black, 30, 100, 15)
              ],
            ),
            linecont("Small - 6", "\$218", Colors.grey[300], whitecolor,
                BoxShape.circle),
            verticallines(),
            linecont("Medium - 10", "\$312", yellowcolor, yellowcolor,
                BoxShape.circle),
            verticallines(),
            linecont("Large - 14", "\$416", Colors.grey[300], whitecolor,
                BoxShape.circle),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text("Select Crust",
                        style: TextStyle(fontWeight: FontWeight.bold))),
                textbuttoncontainer(
                    "Required", yellowcolor, Colors.black, 30, 100, 15)
              ],
            ),
            linecont("Classic Hand tossed", "", Colors.grey[300], whitecolor,
                BoxShape.circle),
            verticallines(),
            linecont("Thin Crust", "", Colors.grey[300], whitecolor,
                BoxShape.circle),
            verticallines(),
            linecont(
                "Cheese burst", "", yellowcolor, yellowcolor, BoxShape.circle),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text("Add ons",
                        style: TextStyle(fontWeight: FontWeight.bold))),
                textbuttoncontainer(
                    "Optional", Colors.white, Colors.black, 30, 100, 15)
              ],
            ),
            linecont("Add Extra Cheese", "\+ \$2.50", Colors.grey[300],
                whitecolor, BoxShape.rectangle),
            verticallines(),
            linecont("Add Mushroom", "\+ \$2.50", Colors.grey[300], whitecolor,
                BoxShape.rectangle),
            SizedBox(height: 10),
            verticallines(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                textbuttoncontainer(
                    "Add to Cart", yellowcolor, Colors.black, 50, 220, 20),
                Container(
                    margin: EdgeInsets.only(right: 20),
                    child: Column(
                      children: [
                        Text(
                          "Item Total",
                        ),
                        Text("\$333.50",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20)),
                      ],
                    )),
              ],
            ),
          ],
        ),
      ],
    ));
  }

  Widget arrowbuttoncont() {
    return Container(
      margin: EdgeInsets.all(20),
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.grey[300]),
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

  Widget cont3() {
    return Container(
      margin: EdgeInsets.all(20),
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
                icon: Icon(Icons.cabin),
                iconSize: 20,
                color: Colors.black,
                onPressed: () {},
              ),
            ),
          ),
          SizedBox(width: 5),
          Container(
            child: Center(
              child: Text("2"),
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

  Widget textbuttoncontainer(
      String word, colorcode, textcode, double h, double w, double textsize) {
    return Container(
      margin: EdgeInsets.all(10),
      height: h,
      width: w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: colorcode),
      child: Center(
          child: Center(
        child: Text(
          word,
          style: TextStyle(color: textcode, fontSize: textsize),
        ),
      )),
    );
  }

  Widget linecont(String text1, String price, colortype1, colortype2, boxtype) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
            margin: EdgeInsets.only(left: 20, top: 6),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Center(
                      child: Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                        color: colortype2, shape: BoxShape.circle),
                  )),
                  height: 23,
                  width: 23,
                  decoration: BoxDecoration(
                      color: whitecolor,
                      shape: boxtype,
                      border: Border.all(color: colortype1, width: 3)),
                ),
                SizedBox(width: 7),
                Text(
                  text1,
                ),
              ],
            )),
        Container(margin: EdgeInsets.only(right: 15), child: Text(price))
      ],
    );
  }

  Widget verticallines() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 10, right: 10, left: 15, bottom: 10),
      child: Divider(
        height: 5,
        color: Colors.grey[300],
        thickness: 3,
      ),
    );
  }
}
