import 'package:opentrainingsale/domain/training/training.dart';
import 'package:opentrainingsale/domain/training/training_definition_id.dart';
import 'package:opentrainingsale/domain/training/training_id.dart';
import 'package:opentrainingsale/domain/training/training_repository.dart';

class InMemoryTrainingRepository implements TrainingRepository {
  final Map<TrainingId, Training> _store = {};
  final Map<TrainingDefinitionId, TrainingId> _byDefinition = {};
  int _seq = 0;

  @override
  Training findByDefinitionId(TrainingDefinitionId trainingDefinitionId) {
    final id = _byDefinition[trainingDefinitionId];
    if (id == null) {
      throw StateError('No training found for definition id $trainingDefinitionId');
    }
    return _store[id]!;
  }

  @override
  TrainingId save(Training training) {
    final newId = TrainingId((_seq++).toString());
    _store[newId] = training;
    _byDefinition[training.trainingDefinitionId] = newId;
    return newId;
  }
}
