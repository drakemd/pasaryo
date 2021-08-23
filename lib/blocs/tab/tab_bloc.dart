import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:pasaryo/blocs/tab/tab_event.dart';
import 'package:pasaryo/data/models/models.dart';

class TabBloc extends Bloc<TabEvent, AppTab> {
  @override
  AppTab get initialState => AppTab.home;

  @override
  Stream<AppTab> mapEventToState(TabEvent event) async* {
    if (event is UpdateTab) {
      yield event.tab;
    }
  }
}