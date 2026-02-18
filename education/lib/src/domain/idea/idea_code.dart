import '../authorid/author_id.dart';

class IdeaCode {
  final String value;

  IdeaCode._(this.value);

  factory IdeaCode.fromAuthor(AuthorId authorId) {
    final timestamp = DateTime.now().toIso8601String();
    return IdeaCode._('IDEA/${authorId.value}/$timestamp');
  }

  @override
  String toString() => value;
}
