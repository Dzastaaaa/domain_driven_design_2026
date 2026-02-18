import 'package:opentrainingsale/domain/summary/summary.dart';
import 'package:opentrainingsale/domain/summary/summary_id.dart';

abstract class SummaryRepository {
  Summary findById(SummaryId summaryId);

  void save(Summary summary);
}
