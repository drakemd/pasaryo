import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pasaryo/blocs/blocs.dart';
import 'package:pasaryo/pasaryo_app.dart';

void main() {
  BlocSupervisor.delegate = MyBlocDelegate();

  runApp(PasaryoApp());
}