import 'package:flutter/cupertino.dart';

class MyBannerWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Live Update Covid 19",
            style: TextStyle(
              fontFamily: "Raleway",
              fontWeight: FontWeight.w700,
              fontSize: 20
            ),
          ),
          SizedBox(height: 10,),
          Image.asset("assets/images/banner1.png")
        ],
      ),
    );
  }
}