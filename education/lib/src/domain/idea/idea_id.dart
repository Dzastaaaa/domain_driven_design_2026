import 'package:uuid/uuid.dart';

class IdeaId {
  static final Uuid _uuid = Uuid();

  final String value;

  const IdeaId(this.value);

  factory IdeaId.existing(String raw) => IdeaId(raw);

  factory IdeaId.createNew() => IdeaId(_uuid.v4());

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IdeaId &&
          runtimeType == other.runtimeType &&
          value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'IdeaId($value)';
}
