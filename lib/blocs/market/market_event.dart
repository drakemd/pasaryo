import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class MarketEvent extends Equatable {
  MarketEvent([List props = const []]);
}

class LoadMarkets extends MarketEvent {
  @override
  String toString() => 'LoadMarkets';

  @override
  // TODO: implement props
  List<Object> get props => [];
}
