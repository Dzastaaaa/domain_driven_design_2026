class TrainingId {
  final String value;

  const TrainingId(this.value);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TrainingId && runtimeType == other.runtimeType && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'TrainingId($value)';
}
