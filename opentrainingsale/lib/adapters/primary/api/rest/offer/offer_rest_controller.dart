import 'package:opentrainingsale/application/offer/offer_application_service.dart';

class OfferRestController {
  final OfferApplicationService offerApplicationService;

  OfferRestController(this.offerApplicationService);

  void cancel(String offerId) {
    offerApplicationService.cancel(offerId);
  }
}
