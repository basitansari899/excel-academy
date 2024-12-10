import 'package:excel_academy/app/routes/app_pages.dart';
import 'package:excel_academy/app/theme/colors.dart';
import 'package:excel_academy/app/widgets/game_view.dart';
import 'package:excel_academy/app/widgets/question_option_card.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/player_questions_controller.dart';

class PlayerQuestionsView extends GetView<PlayerQuestionsController> {
  const PlayerQuestionsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GameView(
      onPressed: () => Get.toNamed(Routes.SCORE_BOARD),
      isSpacer: false,
      shouldShowBottomsheetButton: true,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: XColors.sheetColor,
                borderRadius: BorderRadius.circular(8)),
            width: Get.width,
            child: Text(
              'What are the different types of costs in management accounting?',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ).paddingSymmetric(horizontal: 20, vertical: 14),
          ),
          SizedBox(height: 24),
          Row(
            children: [
              Expanded(
                child: QuestionOptionCard(
                  title: 'Indirect costs',
                  isSelected: true,
                  cardColor: XColors.correctCardColor,
                  borderColor: XColors.correctBorderColor,
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: QuestionOptionCard(
                  onPressed: (){},
                  title: 'Variable costs',
                  isSelected: true,
                  cardColor: XColors.correctCardColor,
                  borderColor: XColors.correctBorderColor,
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: QuestionOptionCard(
                  title: 'Semi-variable costs',
                  isSelected: true,
                  cardColor: XColors.wrongCardColor,
                  borderColor: XColors.wrongBorderColor,
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: QuestionOptionCard(
                  title: 'Performance evaluation',
                  isSelected: true,
                  cardColor: XColors.wrongCardColor,
                  borderColor: XColors.wrongBorderColor,
                ),
              ),
            ],
          ),
        ],
      ).paddingSymmetric(horizontal: 24, vertical: 12),
    );
  }
}
