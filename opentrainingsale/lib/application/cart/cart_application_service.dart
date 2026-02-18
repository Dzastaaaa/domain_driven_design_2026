import 'package:opentrainingsale/domain/cart/cart_id.dart';
import 'package:opentrainingsale/domain/cart/cart_repository.dart';
import 'package:opentrainingsale/domain/training/training_id.dart';

class CartApplicationService {
	final CartRepository cartRepository;

	CartApplicationService(this.cartRepository);

	void add(String cartId, String trainingId) {
		final cartIdVO = CartId(cartId);
		final trainingIdVO = TrainingId(trainingId);
		final cart = cartRepository.findById(cartIdVO);
		cart.add(trainingIdVO);
		cartRepository.save(cart);
	}
}

