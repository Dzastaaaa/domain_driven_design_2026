import 'package:opentrainingsale/domain/offer/offer.dart';
import 'package:opentrainingsale/domain/offer/offer_id.dart';
import 'package:opentrainingsale/domain/offer/offer_repository.dart';

class InMemoryOfferRepository implements OfferRepository {
  final Map<OfferId, Offer> _store = {};

  @override
  Offer findById(OfferId offerId) {
    final offer = _store[offerId];
    if (offer == null) {
      throw StateError('No offer found for id $offerId');
    }
    return offer;
  }

  @override
  void save(Offer offer) {
    _store[offer.id] = offer;
  }
}
