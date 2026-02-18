class DraftId {
  final String value;

  const DraftId(this.value);

  factory DraftId.existing(String raw) => DraftId(raw);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DraftId && runtimeType == other.runtimeType && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'DraftId($value)';
}
