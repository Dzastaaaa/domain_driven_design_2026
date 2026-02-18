import 'package:opentrainingsale/domain/offer/offer.dart';
import 'package:opentrainingsale/domain/offer/offer_id.dart';

abstract class OfferRepository {
  Offer findById(OfferId offerId);

  void save(Offer offer);
}
