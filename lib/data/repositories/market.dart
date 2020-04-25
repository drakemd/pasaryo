import 'package:pasaryo/data/models/models.dart';

class MarketRepository {
  List<Market> _markets;

  Future<List<Market>> loadMarkets() async {
    // simulate real data fetching
    await Future.delayed(Duration(milliseconds: 600));
    // store dummy data
    _markets = [];

    return _markets;
  }

  List<Market> get markets => _markets;
}