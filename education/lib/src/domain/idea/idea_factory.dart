import '../trainerscatalogue/trainers_catalogue.dart';
import 'commands/register_idea_domain_command.dart';
import 'idea.dart';
import 'idea_code.dart';
import 'idea_exception.dart';
import 'idea_id.dart';

class IdeaFactory {
  final TrainersCatalogue trainersCatalogue;

  IdeaFactory(this.trainersCatalogue);

  Idea create(RegisterIdeaDomainCommand command) {
    if (trainersCatalogue.isNotQualified(command.authorId)) {
      throw IdeaException.notQualifiedAuthor(command.authorId);
    }

    final ideaCode = IdeaCode.fromAuthor(command.authorId);
    final ideaId = IdeaId.createNew();

    return Idea(
      ideaId: ideaId,
      ideaCode: ideaCode,
      authorId: command.authorId,
      title: command.title,
      description: command.description,
    );
  }
}
