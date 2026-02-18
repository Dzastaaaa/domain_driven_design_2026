import 'idea.dart';
import 'idea_id.dart';

abstract class IdeaRepository {
  IdeaId save(Idea idea);

  Idea findBy(IdeaId ideaId);
}
