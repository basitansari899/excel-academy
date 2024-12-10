import 'package:get/get.dart';

import '../controllers/score_board_controller.dart';

class ScoreBoardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ScoreBoardController>(
      () => ScoreBoardController(),
    );
  }
}
