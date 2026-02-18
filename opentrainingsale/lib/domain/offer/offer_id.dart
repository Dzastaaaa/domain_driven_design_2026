import 'package:uuid/uuid.dart';

class OfferId {
  static final Uuid _uuid = Uuid();

  final String value;

  const OfferId(this.value);

  factory OfferId.generate() => OfferId(_uuid.v4());

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OfferId && runtimeType == other.runtimeType && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'OfferId($value)';
}
