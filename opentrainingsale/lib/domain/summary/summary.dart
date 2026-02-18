import 'package:opentrainingsale/domain/offer/offer.dart';
import 'package:opentrainingsale/domain/participantid/participant_id.dart';
import 'package:opentrainingsale/domain/summary/summary_id.dart';
import 'package:opentrainingsale/domain/summary/summary_status.dart';
import 'package:opentrainingsale/domain/training/training_id.dart';

class Summary {
  final SummaryId summaryId;
  final TrainingId trainingId;
  final ParticipantId participantId;
  SummaryStatus _status;

  Summary({
    required this.summaryId,
    required this.trainingId,
    required this.participantId,
    SummaryStatus status = SummaryStatus.review,
  }) : _status = status;

  SummaryStatus get status => _status;

  Offer confirm() {
    _status = SummaryStatus.confirmed;
    return Offer.create(
      summaryId: summaryId,
      trainingId: trainingId,
      participantId: participantId,
    );
  }
}
