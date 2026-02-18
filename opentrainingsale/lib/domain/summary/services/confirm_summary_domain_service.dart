import 'package:opentrainingsale/domain/offer/offer.dart';
import 'package:opentrainingsale/domain/summary/services/summary_confirmation_dto.dart';
import 'package:opentrainingsale/domain/summary/summary.dart';
import 'package:opentrainingsale/domain/training/training.dart';

class ConfirmSummaryDomainService {
  SummaryConfirmationDto confirm(Summary summary, Training training) {
    final Offer offer = summary.confirm();
    training.bookPlace(offer.participant);
    return SummaryConfirmationDto(summary, training, offer);
  }
}
