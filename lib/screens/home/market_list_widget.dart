import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pasaryo/data/models/market.dart';
import 'package:pasaryo/utils/responsive_dimension.dart';

class MarketListWidget extends StatelessWidget {
  final List<Market> _marketList;

  MarketListWidget({@required List<Market> marketList}) : _marketList = marketList;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[getMarketListWidgets(_marketList, context)],
    );
  }

  Widget getMarketListWidgets(List<Market> markets, BuildContext context) {
    var wp = (int dp) => ResponsiveDimensions.wp(dp.toDouble(), context);
    var fp = (int dp) => ResponsiveDimensions.wp(dp.toDouble(), context);
    double outerHorizontalPadding = ResponsiveDimensions.outerHorizontalPadding(context);

    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: outerHorizontalPadding),
            child: Text(
              "Pasar terdekat kamu nih",
              style: TextStyle(
                  fontFamily: "Raleway",
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(0, 0, 0, 0.5),
                  fontSize: fp(15)),
            ),
          ),
          ...markets.map((market) {
            return
              InkWell(
                onTap: () => Navigator.pushNamed(context, "/shops"),
                child: Container(
                    margin: EdgeInsets.only(
                        left: outerHorizontalPadding,
                        right: outerHorizontalPadding,
                        top: outerHorizontalPadding),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(wp(7)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(
                                  0,
                                  wp(2)
                              ),
                              blurRadius: wp(5),
                              spreadRadius: wp(1),
                              color: Color.fromRGBO(0, 0, 0, 0.3)
                          )
                        ]
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Image.asset(market.image, width: wp(100), height: wp(100)),
                        Container(
                          width: wp(140),
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(left: wp(10)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: wp(15)),
                              Text(
                                market.name,
                                style: TextStyle(
                                    fontSize: fp(12),
                                    fontFamily: "Raleway",
                                    fontWeight: FontWeight.w700
                                ),
                              ),
                              SizedBox(height: wp(10)),
                              Text(
                                market.address,
                                maxLines: 5,
                                style: TextStyle(
                                    fontFamily: "Roboto",
                                    fontSize: fp(10),
                                    color: Color.fromRGBO(0, 0, 0, 0.5)
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                            width: wp(85),
                            child: Column(
                              children: <Widget>[
                                SizedBox(height: wp(30)),
                                Text(
                                  market.distance.toString() + " km",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Raleway",
                                    fontSize: fp(20),
                                  ),
                                )
                              ],
                            )
                        )
                      ],
                    )
                ),
              );
          }).toList(),
          SizedBox(height: wp(30))
        ]);
  }
}
