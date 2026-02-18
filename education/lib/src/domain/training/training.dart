import '../authorid/author_id.dart';
import '../draft/draft_id.dart';
import 'trainer_id.dart';
import 'training_id.dart';

class Training {
  final TrainingId trainingId;
  final DraftId draftId;
  final AuthorId authorId;
  TrainerId _trainerId;

  Training({
    required this.trainingId,
    required this.draftId,
    required this.authorId,
    required TrainerId trainerId,
  }) : _trainerId = trainerId;

  TrainingId get id => trainingId;

  TrainerId get trainer => _trainerId;

  void changeTrainer(TrainerId trainerId) {
    _trainerId = trainerId;
  }
}
