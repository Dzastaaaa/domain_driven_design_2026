import 'training.dart';
import 'training_id.dart';

abstract class TrainingRepository {
  Training findById(TrainingId trainingId);

  void save(Training training);
}
