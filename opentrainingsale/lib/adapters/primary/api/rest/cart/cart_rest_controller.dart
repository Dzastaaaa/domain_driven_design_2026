import 'package:opentrainingsale/application/cart/cart_application_service.dart';
import 'package:opentrainingsale/adapters/primary/api/rest/cart/add_training_dto.dart';

class CartRestController {
  final CartApplicationService cartApplicationService;

  CartRestController(this.cartApplicationService);

  void add(AddTrainingDto dto) {
    cartApplicationService.add(dto.cartId, dto.trainingId);
  }
}
