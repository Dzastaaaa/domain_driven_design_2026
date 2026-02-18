import 'package:opentrainingsale/domain/offer/offer_id.dart';
import 'package:opentrainingsale/domain/participantid/participant_id.dart';
import 'package:opentrainingsale/domain/summary/summary_id.dart';
import 'package:opentrainingsale/domain/training/training_id.dart';

class Offer {
  final OfferId offerId;
  final SummaryId summaryId;
  final TrainingId trainingId;
  final ParticipantId participantId;
  bool _canceled;

  Offer._({
    required this.offerId,
    required this.summaryId,
    required this.trainingId,
    required this.participantId,
  }) : _canceled = false;

  factory Offer.create({
    required SummaryId summaryId,
    required TrainingId trainingId,
    required ParticipantId participantId,
    OfferId? offerId,
  }) {
    return Offer._(
      offerId: offerId ?? OfferId.generate(),
      summaryId: summaryId,
      trainingId: trainingId,
      participantId: participantId,
    );
  }

  bool get isCanceled => _canceled;

  OfferId get id => offerId;

  SummaryId get summary => summaryId;

  TrainingId get training => trainingId;

  ParticipantId get participant => participantId;

  void cancel() {
    _canceled = true;
  }
}
