
import 'package:education/education.dart';

class InMemoryIdeaRepository implements IdeaRepository {
  final Map<String, Idea> _store = {};

  @override
  IdeaId save(Idea idea) {
    _store[idea.id.value] = idea;
    return idea.id;
  }

  @override
  Idea findBy(IdeaId ideaId) {
    final idea = _store[ideaId.value];
    if (idea != null) {
      return idea;
    }
    throw IdeaNotFoundException(ideaId);
  }

  Idea? findOptionalBy(IdeaId ideaId) => _store[ideaId.value];
  
  Iterable<Idea> all() => _store.values;
}
