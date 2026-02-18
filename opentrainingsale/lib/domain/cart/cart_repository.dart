import 'package:opentrainingsale/domain/cart/cart.dart';
import 'package:opentrainingsale/domain/cart/cart_id.dart';

abstract class CartRepository {
  Cart findById(CartId cartId);
  void save(Cart cart);
}
