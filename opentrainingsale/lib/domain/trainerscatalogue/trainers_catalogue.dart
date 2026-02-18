import 'package:opentrainingsale/domain/trainerscatalogue/trainer_qualification.dart';

abstract class TrainersCatalogue {
  bool cannotConductTraining(TrainerQualification trainerQualification);
}
