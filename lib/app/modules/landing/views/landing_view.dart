import 'package:excel_academy/app/assets/assets.dart';
import 'package:excel_academy/app/routes/app_pages.dart';
import 'package:excel_academy/app/widgets/main_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/landing_controller.dart';

class LandingView extends GetView<LandingController> {
  const LandingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MainView(
      onPressed: () =>  Get.toNamed(Routes.HOME),
      isSpacer: true,
      showLeftLogo: false,
      child: Image.asset(ImageAsset.secondaryLogo,width: 134,height: 76).paddingOnly(bottom: 250),
    );
  }
}
