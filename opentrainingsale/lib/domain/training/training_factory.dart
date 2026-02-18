import 'package:opentrainingsale/domain/education/education.dart';
import 'package:opentrainingsale/domain/trainerscatalogue/trainer_qualification.dart';
import 'package:opentrainingsale/domain/trainerscatalogue/trainers_catalogue.dart';
import 'package:opentrainingsale/domain/training/commands/add_training_domain_command.dart';
import 'package:opentrainingsale/domain/training/training.dart';
import 'package:opentrainingsale/domain/training/training_exception.dart';

class TrainingFactory {
  final Education education;
  final TrainersCatalogue trainersCatalogue;

  TrainingFactory(this.education, this.trainersCatalogue);

  Training create(AddTrainingDomainCommand command) {
    if (education.doesNotExist(command.trainingDefinitionId)) {
      throw TrainingException.trainingDefinitionNotExist(command.trainingDefinitionId);
    }

    final qualification = TrainerQualification(command.trainerId, command.trainingDefinitionId);
    if (trainersCatalogue.cannotConductTraining(qualification)) {
      throw TrainingException.trainerCannotConductTraining(command.trainerId, command.trainingDefinitionId);
    }

    return Training(
      trainingDefinitionId: command.trainingDefinitionId,
      trainerId: command.trainerId,
      price: command.price,
      period: command.period,
    );
  }
}
