
import 'package:education/education.dart';

class IdeaNotFoundException implements Exception {
  final IdeaId ideaId;
  IdeaNotFoundException(this.ideaId);

  @override
  String toString() => 'IdeaNotFoundException: Idea ${ideaId.value} not found';
}
