import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pasaryo/blocs/blocs.dart';
import 'package:pasaryo/data/models/models.dart';
import 'package:pasaryo/screens/screens.dart';
import 'package:pasaryo/widgets/widgets.dart';

class MainTabScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TabBloc, AppTab>(
      builder: (context, activeTab) {
        return Scaffold(
          body: activeTab == AppTab.home ? HomeScreen() : TransactionScreen(),
          bottomNavigationBar: TabSelector(
            activeTab: activeTab,
            onTabSelected: (tab) =>
              BlocProvider.of<TabBloc>(context).add(UpdateTab(tab)),
          ),
        );
      }
    ); //bloc builder
  }
}