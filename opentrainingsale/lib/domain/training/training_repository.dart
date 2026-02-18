import 'package:opentrainingsale/domain/training/training.dart';
import 'package:opentrainingsale/domain/training/training_definition_id.dart';
import 'package:opentrainingsale/domain/training/training_id.dart';

abstract class TrainingRepository {
  Training findByDefinitionId(TrainingDefinitionId trainingDefinitionId);

  TrainingId save(Training training);
}
