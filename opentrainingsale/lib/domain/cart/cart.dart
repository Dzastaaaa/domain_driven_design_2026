import 'package:opentrainingsale/domain/cart/cart_id.dart';
import 'package:opentrainingsale/domain/training/training_id.dart';

class Cart {
  final CartId id;
  final List<TrainingId> _items = <TrainingId>[];

  Cart(this.id);

  List<TrainingId> get items => List.unmodifiable(_items);

  void add(TrainingId trainingId) {
    _items.add(trainingId);
  }
}
