import 'package:education/education.dart';

class TrainingApplicationService {
  final TrainingRepository trainingRepository;
  final TrainingDomainService trainingDomainService;

  TrainingApplicationService(this.trainingRepository, this.trainingDomainService);

  void change(String fromTrainingId, String toTrainingId) {
    final trainingIdFrom = TrainingId.existing(fromTrainingId);
    final trainingIdTo = TrainingId.existing(toTrainingId);
    final trainingFrom = trainingRepository.findById(trainingIdFrom);
    final trainingTo = trainingRepository.findById(trainingIdTo);

    final trainings = trainingDomainService.change(trainingFrom, trainingTo);
    for (final training in trainings) {
      trainingRepository.save(training);
    }
  }
}
