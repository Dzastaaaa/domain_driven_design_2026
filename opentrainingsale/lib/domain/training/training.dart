import 'package:opentrainingsale/domain/participantid/participant_id.dart';
import 'package:opentrainingsale/domain/training/period.dart';
import 'package:opentrainingsale/domain/training/price.dart';
import 'package:opentrainingsale/domain/training/trainer_id.dart';
import 'package:opentrainingsale/domain/training/training_definition_id.dart';

class Training {
  final TrainingDefinitionId trainingDefinitionId;
  final TrainerId trainerId;
  final Price price;
  final Period period;
  final List<ParticipantId> _participants;

  Training({
    required this.trainingDefinitionId,
    required this.trainerId,
    required this.price,
    required this.period,
    List<ParticipantId>? participants,
  }) : _participants = List<ParticipantId>.from(participants ?? const []);

  List<ParticipantId> get participants => List.unmodifiable(_participants);

  void bookPlace(ParticipantId participantId) {
    _participants.add(participantId);
  }
}
