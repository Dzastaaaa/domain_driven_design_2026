import '../authorid/author_id.dart';
import '../idea/idea_id.dart';
import 'draft_id.dart';

class Draft {
  final DraftId draftId;
  final IdeaId ideaId;
  final AuthorId authorId;

  const Draft({
    required this.draftId,
    required this.ideaId,
    required this.authorId,
  });
}
