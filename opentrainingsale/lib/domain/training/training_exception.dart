class TrainingException implements Exception {
  final String message;

  TrainingException._(this.message);

  static TrainingException trainingDefinitionNotExist(Object trainingDefinitionId) {
    return TrainingException._('Training definition with id $trainingDefinitionId does not exist');
  }

  static TrainingException trainerCannotConductTraining(Object trainerId, Object trainingDefinitionId) {
    return TrainingException._('Trainer with id $trainerId cannot conduct training with definition id $trainingDefinitionId');
  }

  @override
  String toString() => 'TrainingException: $message';
}
