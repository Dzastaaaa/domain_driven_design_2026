import 'package:decimal/decimal.dart';
import 'package:opentrainingsale/domain/training/price_exception.dart';

class Price {
  final Decimal price;

  const Price._(this.price);

  factory Price.from(Decimal price) {
    if (price < Decimal.zero) {
      throw PriceException(price);
    }

    return Price._(price);
  }
}

