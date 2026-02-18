import 'package:education/education.dart';

class IdeaApplicationService {
  final IdeaRepository ideaRepository;
  final IdeaFactory ideaFactory;

  IdeaApplicationService(this.ideaRepository, this.ideaFactory);

  IdeaId register(RegisterIdeaCommand command) {
    final authorId = AuthorId.fromString(command.authorId);
    final domainCommand = RegisterIdeaDomainCommand(
      authorId: authorId,
      title: command.title,
      description: command.description,
    );

    final idea = ideaFactory.create(domainCommand);
    return ideaRepository.save(idea);
  }

  void approve(String ideaId) {
    final ideaIdVO = IdeaId.existing(ideaId);
    final idea = ideaRepository.findBy(ideaIdVO);
    idea.approve();
    ideaRepository.save(idea);
  }
}
