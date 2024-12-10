import 'package:excel_academy/app/routes/app_pages.dart';
import 'package:excel_academy/app/theme/colors.dart';
import 'package:excel_academy/app/widgets/home_cards.dart';
import 'package:excel_academy/app/widgets/main_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(()=>
       MainView(
        onPressed: controller.isSelected.value ? () =>  Get.toNamed(Routes.SUBJECTS) : null,
        isSpacer: true,
        child: Column(children: [
          HomeCards(
            desc: 'This is not available at the moment as we are currently fixing it. We will be back shortly',
          ),
          SizedBox(height: 20),
          HomeCards(
            isPlayerSelected: controller.isSelected.value,
            cardColor: controller.isSelected.value? XColors.selectedPlayerCardColor:null,
            borderColor: XColors.selectedPlayerBorderColor,
            onCardPress: controller.setSelectedPlayer,
            title: 'Play with someone on the app',
            subTitle: 'Quiz with someone real-time and get scored to beat the highest scores',
          ),
      
        ],).paddingSymmetric(horizontal: 24,vertical:24),
      ),
    );
  }
}
