import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pasaryo/blocs/blocs.dart';
import 'package:pasaryo/data/repositories/repositories.dart';
import 'package:pasaryo/pasaryo_app.dart';

void main() {
  final UserRepository _userRepository = UserRepository();

  BlocSupervisor.delegate = MyBlocDelegate();

  runApp(
    BlocProvider<AuthenticationBloc>(
      create: (context) => AuthenticationBloc(userRepository: _userRepository),
      child: PasaryoApp(userRepository: _userRepository)
    )
  );
}