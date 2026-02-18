class ParticipantId {
  final String value;

  const ParticipantId(this.value);

  factory ParticipantId.existing(String raw) => ParticipantId(raw);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ParticipantId && runtimeType == other.runtimeType && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'ParticipantId($value)';
}
