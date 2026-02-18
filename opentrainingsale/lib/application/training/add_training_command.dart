import 'package:decimal/decimal.dart';

class AddTrainingCommand {
  final String trainingDefinitionId;
  final String trainerId;
  final Decimal price;
  final DateTime startDate;
  final DateTime endDate;

  const AddTrainingCommand({
    required this.trainingDefinitionId,
    required this.trainerId,
    required this.price,
    required this.startDate,
    required this.endDate,
  });
}
