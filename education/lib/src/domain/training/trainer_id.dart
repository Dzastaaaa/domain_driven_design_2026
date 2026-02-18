class TrainerId {
  final String value;

  const TrainerId(this.value);

  factory TrainerId.existing(String raw) => TrainerId(raw);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TrainerId && runtimeType == other.runtimeType && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'TrainerId($value)';
}
