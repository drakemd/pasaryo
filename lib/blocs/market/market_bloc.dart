import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:pasaryo/blocs/market/market.dart';
import 'package:pasaryo/data/models/models.dart';
import 'package:pasaryo/data/repositories/repositories.dart';

class MarketBloc extends Bloc<MarketEvent, MarketState> {
  final MarketRepository _marketRepository;

  MarketBloc({@required marketRepository}): _marketRepository = marketRepository;

  @override
  MarketState get initialState => MarketLoading();

  @override
  Stream<MarketState> mapEventToState(MarketEvent event) async* {
    if (event is LoadMarkets) {
      yield* _mapLoadMarketsToState();
    }
  }

  Stream<MarketState> _mapLoadMarketsToState() async* {
    try {
      final List<Market> markets = await _marketRepository.loadMarkets();
      yield MarketLoaded(markets);
    } catch (_) {
      yield MarketNotLoaded();
    }
  }
}