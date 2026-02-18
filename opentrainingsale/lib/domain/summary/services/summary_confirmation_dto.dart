import 'package:opentrainingsale/domain/offer/offer.dart';
import 'package:opentrainingsale/domain/summary/summary.dart';
import 'package:opentrainingsale/domain/training/training.dart';

class SummaryConfirmationDto {
  final Summary summary;
  final Training training;
  final Offer offer;

  const SummaryConfirmationDto(this.summary, this.training, this.offer);
}
