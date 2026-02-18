import 'package:opentrainingsale/domain/training/trainer_id.dart';
import 'package:opentrainingsale/domain/training/training_definition_id.dart';

abstract class TrainerEligibility {
  bool canConduct(TrainerId trainerId, TrainingDefinitionId trainingDefinitionId);
}
