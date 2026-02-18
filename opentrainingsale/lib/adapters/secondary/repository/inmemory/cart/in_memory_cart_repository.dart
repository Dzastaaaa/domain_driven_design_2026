import 'package:opentrainingsale/domain/cart/cart.dart';
import 'package:opentrainingsale/domain/cart/cart_id.dart';
import 'package:opentrainingsale/domain/cart/cart_repository.dart';

class InMemoryCartRepository implements CartRepository {
  final Map<CartId, Cart> _store = {};

  @override
  Cart findById(CartId cartId) {
    final cart = _store[cartId];
    if (cart == null) {
      throw StateError('No cart found for id $cartId');
    }
    return cart;
  }

  @override
  void save(Cart cart) {
    _store[cart.id] = cart;
  }
}
