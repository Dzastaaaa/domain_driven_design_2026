import '../authorid/author_id.dart';

class IdeaException implements Exception {
  final AuthorId authorId;

  IdeaException._(this.authorId);

  factory IdeaException.notQualifiedAuthor(AuthorId authorId) =>
      IdeaException._(authorId);

  @override
  String toString() => 'IdeaException(not qualified: ${authorId.value})';
}
