import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pasaryo/blocs/blocs.dart';
import 'package:pasaryo/data/models/models.dart';
import 'package:pasaryo/screens/account/account_screen.dart';
import 'package:pasaryo/screens/bag/bag_screen.dart';
import 'package:pasaryo/screens/screens.dart';
import 'package:pasaryo/widgets/widgets.dart';

class MainTabScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TabBloc, AppTab>(
      builder: (context, activeTab) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          resizeToAvoidBottomPadding: false,
          body: getCurrentScreen(activeTab),
          bottomNavigationBar: TabSelectorWidget(
            activeTab: activeTab,
            onTabSelected: (tab) =>
              BlocProvider.of<TabBloc>(context).add(UpdateTab(tab)),
          ),
        );
      }
    ); //bloc builder
  }

  Widget getCurrentScreen(activeTab){
    switch(activeTab){
      case AppTab.home:
        return HomeScreen();
      case AppTab.transaction:
        return TransactionScreen();
      case AppTab.bag:
        return BagScreen();
      case AppTab.account:
        return AccountScreen();
      default:
        return HomeScreen();
    }
  }
}