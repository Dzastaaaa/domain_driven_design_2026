import 'package:education/src/application/idea/register_idea_command.dart';

class IdeaDto {
  final String sessionId;
  final String authorId;
  final String title;
  final String description;

  const IdeaDto({
    required this.sessionId,
    required this.authorId,
    required this.title,
    required this.description,
  });

  RegisterIdeaCommand asCommand() {
    return RegisterIdeaCommand(
      authorId: authorId,
      title: title,
      description: description,
    );
  }
}
