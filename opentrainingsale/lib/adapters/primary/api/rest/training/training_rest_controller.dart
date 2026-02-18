import 'package:opentrainingsale/application/training/add_training_command.dart';
import 'package:opentrainingsale/application/training/training_application_service.dart';
import 'package:opentrainingsale/domain/training/training_id.dart';

class TrainingRestController {
  final TrainingApplicationService trainingApplicationService;

  TrainingRestController(this.trainingApplicationService);

  TrainingId add(AddTrainingCommand command) {
    return trainingApplicationService.addByAppCommand(command: command);
  }
}
