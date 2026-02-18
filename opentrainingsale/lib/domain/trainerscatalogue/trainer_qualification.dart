import 'package:opentrainingsale/domain/training/trainer_id.dart';
import 'package:opentrainingsale/domain/training/training_definition_id.dart';

class TrainerQualification {
  final TrainerId trainerId;
  final TrainingDefinitionId trainingDefinitionId;

  const TrainerQualification(this.trainerId, this.trainingDefinitionId);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TrainerQualification &&
          runtimeType == other.runtimeType &&
          trainerId == other.trainerId &&
          trainingDefinitionId == other.trainingDefinitionId;

  @override
  int get hashCode => Object.hash(trainerId, trainingDefinitionId);

  @override
  String toString() =>
      'TrainerQualification(trainerId: $trainerId, trainingDefinitionId: $trainingDefinitionId)';
}
