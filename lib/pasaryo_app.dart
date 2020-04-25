import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pasaryo/blocs/blocs.dart';
import 'package:pasaryo/data/repositories/market.dart';
import 'package:pasaryo/data/repositories/repositories.dart';
import 'package:pasaryo/screens/main_tab_screen.dart';

class PasaryoApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Pasaryo",
      routes: {
        "/": (context) {
          return MultiBlocProvider(
            providers: [
              BlocProvider<TabBloc>(
                create: (context) => TabBloc(),
              ),
              BlocProvider<MarketBloc>(
                create: (context) => MarketBloc(marketRepository: MarketRepository()),
              ),
              BlocProvider<TransactionBloc>(
                create: (context) => TransactionBloc(transactionRepository: TransactionRepository()),
              )
            ], child: MainTabScreen(),
          );
        }
      },
    );
  }
}