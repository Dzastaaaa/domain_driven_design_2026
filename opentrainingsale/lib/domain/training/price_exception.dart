import 'package:decimal/decimal.dart';

class PriceException implements Exception {
  final Decimal price;

  PriceException(this.price);

  @override
  String toString() => 'PriceException: invalid price $price';
}
