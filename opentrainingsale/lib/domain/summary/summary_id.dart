import 'package:uuid/uuid.dart';

class SummaryId {
  static final Uuid _uuid = Uuid();

  final String value;

  const SummaryId(this.value);

  factory SummaryId.existing(String raw) => SummaryId(raw);

  factory SummaryId.generate() => SummaryId(_uuid.v4());

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SummaryId && runtimeType == other.runtimeType && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'SummaryId($value)';
}
