import 'package:excel_academy/app/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuestionOptionCard extends StatelessWidget {
  final String title;
  final VoidCallback? onPressed;
  final Color? cardColor;
  final Color? borderColor;
  final bool isSelected;
  const QuestionOptionCard({super.key, required this.title, this.onPressed, this.borderColor,this.cardColor,this.isSelected=false});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
            color: isSelected? cardColor : XColors.sheetColor, borderRadius: BorderRadius.circular(8),
            border: Border.all(color: borderColor??Colors.transparent)
            ),
        height: 140,
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ).paddingSymmetric(horizontal: 20, vertical: 14),
        ),
      ),
    );
  }
}
