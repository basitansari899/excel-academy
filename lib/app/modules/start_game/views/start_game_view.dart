import 'package:excel_academy/app/assets/assets.dart';
import 'package:excel_academy/app/routes/app_pages.dart';
import 'package:excel_academy/app/widgets/main_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/start_game_controller.dart';

class StartGameView extends GetView<StartGameController> {
  const StartGameView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MainView(
      onPressed: () =>  Get.toNamed(Routes.PLAYER_QUESTIONS),
      buttonText: 'START GAME',
      child: Column(children: [
         SizedBox(height: 74),
        Image.asset(ImageAsset.profile1,width: 235,height: 72),
           SizedBox(height: 32),
        Image.asset(ImageAsset.versus,width: 70,height: 190),

        SizedBox(height: 32),
         Image.asset(ImageAsset.profile2,width: 235,height: 72),

      ],),
    );
  }
}
