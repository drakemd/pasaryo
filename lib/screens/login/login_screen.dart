import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:pasaryo/screens/login/login_form_widget.dart';
import 'package:pasaryo/data/repositories/repositories.dart';
import 'package:pasaryo/blocs/blocs.dart';
import 'package:pasaryo/widgets/appbar_widget.dart';

class LoginScreen extends StatelessWidget {
  final UserRepository userRepository;

  LoginScreen({Key key, @required this.userRepository})
      : assert(userRepository != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    double _statusBarHeight  = MediaQuery.of(context).padding.top;

    return Scaffold(
      body: BlocProvider(
        create: (context) {
          return LoginBloc(
            authenticationBloc: BlocProvider.of<AuthenticationBloc>(context),
            userRepository: userRepository,
          );
        },
        child: Column(
            children: <Widget>[
              MyAppBarWidget(_statusBarHeight),
              LoginFormWidget(),
            ],
        ),
      ),
    );
  }
}
