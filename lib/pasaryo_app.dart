import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pasaryo/blocs/blocs.dart';
import 'package:pasaryo/data/repositories/repositories.dart';
import 'package:pasaryo/screens/screens.dart';
import 'package:pasaryo/screens/shop_list/shop_list_screen.dart';
import 'package:pasaryo/utils/responsive_dimension.dart';

class PasaryoApp extends StatelessWidget{
  final UserRepository userRepository;

  PasaryoApp({@required this.userRepository});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: "Pasaryo",
      routes: {
        "/": (context) {
          return BlocBuilder<AuthenticationBloc, AuthenticationState>(
            builder: (context, state) {
              if(state is AuthenticationAuthenticated) {
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
              }else{
                return BlocProvider<LoginBloc>(
                  create: (context) =>
                      LoginBloc(
                        authenticationBloc: BlocProvider.of<AuthenticationBloc>(context),
                        userRepository: this.userRepository),
                  child: LoginScreen(userRepository: this.userRepository)
                );
              }
            },
          );
        },
        "/forgotPassword": (context) {
          return ForgotPasswordScreen();
        },
        "/register": (context) {
          return RegisterScreen();
        },
        "/shops": (context) {
          return ShopListScreen();
        }
      },
    );
  }
}