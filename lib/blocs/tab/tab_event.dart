import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:pasaryo/data/models/models.dart';

@immutable
abstract class TabEvent extends Equatable {
  TabEvent([List props = const []]);
}

class UpdateTab extends TabEvent {
  final AppTab tab;

  UpdateTab(this.tab) : super([tab]);

  @override
  String toString() => 'UpdateTab { tab: $tab }';

  @override
  List<Object> get props => [tab];
}