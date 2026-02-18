import '../../authorid/author_id.dart';

class RegisterIdeaDomainCommand {
  final AuthorId authorId;
  final String title;
  final String description;

  const RegisterIdeaDomainCommand({
    required this.authorId,
    required this.title,
    required this.description,
  });
}
