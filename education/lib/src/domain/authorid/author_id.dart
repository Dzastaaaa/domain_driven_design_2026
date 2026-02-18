class AuthorId {
  final String value;

  const AuthorId(this.value);

  factory AuthorId.fromString(String raw) => AuthorId(raw);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AuthorId && runtimeType == other.runtimeType && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'AuthorId($value)';
}
