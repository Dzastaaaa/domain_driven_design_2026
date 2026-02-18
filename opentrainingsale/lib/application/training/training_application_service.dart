import 'package:decimal/decimal.dart';
import 'package:opentrainingsale/domain/training/period.dart';
import 'package:opentrainingsale/domain/training/price.dart';
import 'package:opentrainingsale/domain/training/trainer_id.dart';
import 'package:opentrainingsale/domain/training/training_definition_id.dart';
import 'package:opentrainingsale/domain/training/training_factory.dart';
import 'package:opentrainingsale/domain/training/training_id.dart';
import 'package:opentrainingsale/domain/training/training_repository.dart';
import 'package:opentrainingsale/domain/training/commands/add_training_domain_command.dart';
import 'package:opentrainingsale/application/training/add_training_command.dart';

class TrainingApplicationService {
  final TrainingRepository trainingRepository;
  final TrainingFactory trainingFactory;
  TrainingApplicationService(this.trainingRepository, this.trainingFactory);

  // primary port

  TrainingId add({
    required String trainingDefinitionId,
    required String trainerId,
    required DateTime startDate,
    required DateTime endDate,
    required Decimal priceValue,
  }) {
    final appCommand = AddTrainingCommand(
      trainingDefinitionId: trainingDefinitionId,
      trainerId: trainerId,
      price: priceValue,
      startDate: startDate,
      endDate: endDate,
    );

    return addByAppCommand(command: appCommand);
  }

  TrainingId addByDomainCommand({
    required AddTrainingDomainCommand command,
  }) {
    final training = trainingFactory.create(command);
    return trainingRepository.save(training);
  }

  TrainingId addByAppCommand({
    required AddTrainingCommand command,
  }) {
    final trainingDefinitionId = TrainingDefinitionId(command.trainingDefinitionId);
    final trainerId = TrainerId(command.trainerId);
    final price = Price.from(command.price);
    final period = Period.from(command.startDate, command.endDate);
    final domainCommand = AddTrainingDomainCommand(trainingDefinitionId, trainerId, price, period);

    return addByDomainCommand(command: domainCommand);
  }
}

