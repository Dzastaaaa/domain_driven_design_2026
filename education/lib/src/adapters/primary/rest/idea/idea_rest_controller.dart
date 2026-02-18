import 'package:education/education.dart';

class IdeaRestController {
  final IdeaApplicationService ideaApplicationService;

  IdeaRestController(this.ideaApplicationService);

  String register(IdeaDto dto) {
    final ideaId = ideaApplicationService.register(dto.asCommand());
    return ideaId.value;
  }
}
