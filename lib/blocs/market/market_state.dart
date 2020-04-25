import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:pasaryo/data/models/models.dart';

@immutable
abstract class MarketState extends Equatable {
  MarketState([List props = const []]);
}

class MarketLoading extends MarketState {
  @override
  String toString() => 'MarketLoading';

  @override
  // TODO: implement props
  List<Object> get props => [];
}

class MarketLoaded extends MarketState {
  final List<Market> markets;

  MarketLoaded([this.markets = const []]) : super([markets]);

  @override
  String toString() => 'MarketLoaded { markets: $markets }';

  @override
  // TODO: implement props
  List<Object> get props => [markets];
}

class MarketNotLoaded extends MarketState {
  @override
  String toString() => 'MarketNotLoaded';

  @override
  // TODO: implement props
  List<Object> get props => [];
}