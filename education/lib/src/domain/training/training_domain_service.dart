import 'training.dart';

class TrainingDomainService {
  List<Training> change(Training trainingFrom, Training trainingTo) {
    final trainerIdFrom = trainingFrom.trainer;
    final trainerIdTo = trainingTo.trainer;
    trainingFrom.changeTrainer(trainerIdTo);
    trainingTo.changeTrainer(trainerIdFrom);
    return [trainingFrom, trainingTo];
  }
}
