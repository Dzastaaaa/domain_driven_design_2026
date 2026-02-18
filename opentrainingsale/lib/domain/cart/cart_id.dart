class CartId {
  final String value;

  const CartId(this.value);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CartId && runtimeType == other.runtimeType && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'CartId($value)';
}
