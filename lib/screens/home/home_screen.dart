import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pasaryo/data/models/models.dart';
import 'package:pasaryo/screens/home/banner_widget.dart';
import 'package:pasaryo/screens/home/category_widget.dart';
import 'package:pasaryo/screens/home/market_list_widget.dart';
import 'package:pasaryo/screens/home/searchbar_widget.dart';
import 'package:pasaryo/widgets/appbar_widget.dart';

class HomeScreen extends StatelessWidget {
  final List<String> _category = ["Makanan", "Daging", "Bumbu Dapur", "Buah"];
  final List<Market> _marketList = [
    new Market(
        "Pasar Higienis",
        "Jl. Gabek Raya No.27, Selindung Baru, Kec. Gabek",
        0.8,
        0.9,
        "xxx",
        1.2,
        "assets/images/pasar.png"),
    new Market(
        "Pasar Pagi",
        "Jl. Gabek Raya No.27, Selindung Baru, Kec. Gabek",
        0.8,
        0.9,
        "xxx",
        1.2,
        "assets/images/pasar.png"),
    new Market(
        "Pasar Rumput",
        "Jl. Gabek Raya No.27, Selindung Baru, Kec. Gabek",
        0.8,
        0.9,
        "xxx",
        1.2,
        "assets/images/pasar.png"),
    new Market(
        "Pasar Ambon",
        "Jl. Gabek Raya No.27, Selindung Baru, Kec. Gabek",
        0.8,
        0.9,
        "xxx",
        1.2,
        "assets/images/pasar.png"),
    new Market(
        "Pasar Santap",
        "Jl. Gabek Raya No.27, Selindung Baru, Kec. Gabek",
        0.8,
        0.9,
        "xxx",
        1.2,
        "assets/images/pasar.png")
  ];

  @override
  Widget build(BuildContext context) {
    double _statusBarHeight = MediaQuery.of(context).padding.top;
    TextEditingController _searchController = new TextEditingController();

    return Container(
        child: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          MyAppBarWidget(_statusBarHeight),
          SizedBox(height: 20),
          MySearchBarWidget(searchController: _searchController),
          CategoryWidget(category: _category),
          MyBannerWidget(),
          SizedBox(height: 20),
          MarketListWidget(marketList: _marketList),
        ],
      ),
    ));
  }
}
