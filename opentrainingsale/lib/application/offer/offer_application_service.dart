import 'package:opentrainingsale/domain/offer/offer_id.dart';
import 'package:opentrainingsale/domain/offer/offer_repository.dart';

class OfferApplicationService {
	final OfferRepository offerRepository;

	OfferApplicationService(this.offerRepository);

	void cancel(String offerId) {
		final offerIdVO = OfferId(offerId);
		final offer = offerRepository.findById(offerIdVO);
		offer.cancel();
		offerRepository.save(offer);
	}
}

