import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pasaryo/data/models/models.dart';

class TabSelectorWidget extends StatelessWidget {
  final AppTab activeTab;
  final Function(AppTab) onTabSelected;

  TabSelectorWidget({
    Key key,
    @required this.activeTab,
    @required this.onTabSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: AppTab.values.indexOf(activeTab),
      onTap: (index) => onTabSelected(AppTab.values[index]),
      items: AppTab.values.map((tab) {
        return BottomNavigationBarItem(
          icon: getTabIcon(tab, activeTab),
          title: getTabTitle(tab)
        );
      }).toList(),
    );
  }

  Image getTabIcon(tab, activeTab){
    if(tab == AppTab.home){
      if(activeTab == tab) {
        return new Image.asset("assets/icons/home_active.png", width: 30, height: 30);
      }else{
        return new Image.asset("assets/icons/home.png", width: 30, height: 30);
      }
    }else if(tab == AppTab.transaction){
      if(activeTab == tab) {
        return new Image.asset("assets/icons/transaction_active.png", width: 30, height: 30);
      }else{
        return new Image.asset("assets/icons/transaction.png", width: 30, height: 30);
      }
    }else if(tab == AppTab.bag){
      if(activeTab == tab) {
        return new Image.asset("assets/icons/bag_active.png", width: 30, height: 30);
      }else{
        return new Image.asset("assets/icons/bag.png", width: 30, height: 30);
      }
    } {
      if(activeTab == tab) {
        return new Image.asset("assets/icons/account_active.png", width: 30, height: 30);
      }else{
        return new Image.asset("assets/icons/account.png", width: 30, height: 30);
      }
    }
  }

  Text getTabTitle(tab) {
    if(tab == AppTab.home){
      return Text("Home", style: TextStyle(color: Colors.black));
    }else if(tab == AppTab.transaction){
      return Text("Transaksi", style: TextStyle(color: Colors.black));
    }else if(tab == AppTab.bag){
      return Text("Keranjang", style: TextStyle(color: Colors.black));
    }else {
      return Text("Account", style: TextStyle(color: Colors.black));
    }
  }
}