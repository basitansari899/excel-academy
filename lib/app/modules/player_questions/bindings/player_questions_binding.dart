import 'package:get/get.dart';

import '../controllers/player_questions_controller.dart';

class PlayerQuestionsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PlayerQuestionsController>(
      () => PlayerQuestionsController(),
    );
  }
}
