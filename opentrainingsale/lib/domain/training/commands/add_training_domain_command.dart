import 'package:opentrainingsale/domain/training/period.dart';
import 'package:opentrainingsale/domain/training/price.dart';
import 'package:opentrainingsale/domain/training/trainer_id.dart';
import 'package:opentrainingsale/domain/training/training_definition_id.dart';

class AddTrainingDomainCommand {
  final TrainingDefinitionId trainingDefinitionId;
  final TrainerId trainerId;
  final Price price;
  final Period period;

  const AddTrainingDomainCommand(this.trainingDefinitionId, this.trainerId, this.price, this.period);
}
