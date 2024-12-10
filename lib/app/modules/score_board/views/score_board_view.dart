import 'package:excel_academy/app/assets/assets.dart';
import 'package:excel_academy/app/theme/colors.dart';
import 'package:excel_academy/app/widgets/button.dart';
import 'package:excel_academy/app/widgets/game_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/score_board_controller.dart';

class ScoreBoardView extends GetView<ScoreBoardController> {
  const ScoreBoardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GameView(
      onPressed: () => {},
      buttonText: 'VIEW LEADERSBOARD',
      shouldShowBottomButton: false,
      isSpacer: true,
      shouldShowBottomsheetButton: true,
      child: Container(
        height: 520,
        width: Get.width,
        decoration: BoxDecoration(
            color: XColors.sheetColor, borderRadius: BorderRadius.circular(50)),
        child: Column(
          children: [
            Text(
              'Your Final Score',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
            Spacer(),
            Container(child: Column(children: [
              Image.asset(ImageAsset.pointCircle,width: 20,height: 20,),
              Text(
              '334',
              style: TextStyle(
                color: Colors.white,
                fontSize: 78,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              'Points overall',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            ],),),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Keep going Buddy! ✌',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Image.asset(
                  ImageAsset.actions,
                  width: 96,
                  height: 24,
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Expanded(
                  child: MainButton(
                    text: 'VIEW LEADERSBOARD',
                    color: XColors.orange1,
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ],
        ).paddingSymmetric(horizontal: 24, vertical: 24),
      ),
    );
  }
}
