import 'package:flutter/cupertino.dart';

class ResponsiveDimensions{
  static double hp(double dp, BuildContext context){
    return dp/800 * MediaQuery.of(context).size.height;
  }

  static double wp(double dp, BuildContext context){
    return dp/375 * MediaQuery.of(context).size.width;
  }

  static outerHorizontalPadding(BuildContext context){
    return wp(20, context);
  }
}