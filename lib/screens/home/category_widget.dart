import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  final List<String> _category;

  CategoryWidget({@required List<String> category}) : _category = category;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      height: 37.0,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _category.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: EdgeInsets.only(left: 10),
              width: 101,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.1),
                        blurRadius: 1,
                        spreadRadius: 1,
                        offset: Offset(0, 0))
                  ]),
              child: CupertinoButton(
                padding: EdgeInsets.all(0),
                color: Color.fromRGBO(221, 99, 73, 1),
                borderRadius: BorderRadius.circular(10),
                onPressed: () => {},
                child: Text(
                  _category[index],
                  style: TextStyle(fontFamily: "Raleway", fontSize: 12),
                ),
              ),
            );
          }),
    );
  }
}
