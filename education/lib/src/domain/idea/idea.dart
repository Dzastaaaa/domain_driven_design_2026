import '../authorid/author_id.dart';
import 'idea_code.dart';
import 'idea_id.dart';

class Idea {
  final IdeaId ideaId;
  final IdeaCode ideaCode;
  final AuthorId authorId;
  final String title;
  final String description;

  const Idea({
    required this.ideaId,
    required this.ideaCode,
    required this.authorId,
    required this.title,
    required this.description,
  });

  IdeaId get id => ideaId;
  IdeaCode get code => ideaCode;

  void approve() {
    // approval workflow to be implemented when rules are known
  }
}
