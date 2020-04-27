import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MySearchBarWidget extends StatelessWidget {
  final TextEditingController _searchController;

  MySearchBarWidget({@required TextEditingController searchController})
      : _searchController = searchController;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.25),
                  blurRadius: 2.0,
                  spreadRadius: 1.0,
                  offset: Offset(
                    0,
                    2,
                  ),
                )
              ]),
          child: TextField(
            decoration: InputDecoration(
                contentPadding: EdgeInsets.all(0),
                hintText: "Mau belanja apa hari ini?",
                hintStyle: TextStyle(fontFamily: "Roboto", fontSize: 16),
                filled: true,
                fillColor: Colors.white,
                border: new OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                prefixIcon:
                    Icon(Icons.search, color: Color.fromRGBO(0, 0, 0, 0.5))),
            style: TextStyle(fontFamily: "Roboto", fontSize: 16),
            controller: _searchController,
          ),
        ));
  }
}
