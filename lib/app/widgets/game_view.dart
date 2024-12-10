import 'package:excel_academy/app/assets/assets.dart';
import 'package:excel_academy/app/theme/colors.dart';
import 'package:excel_academy/app/widgets/button.dart';
import 'package:excel_academy/app/widgets/game_banner.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GameView extends StatelessWidget {
  final Widget? child;
  final VoidCallback? onPressed;
  final String? buttonText;
  final bool isSpacer;
  final bool shouldShowBottomsheetButton;
  final bool shouldShowBottomButton;


  const GameView({
    super.key,
    this.child,
    this.onPressed,
    this.buttonText,
    this.shouldShowBottomsheetButton = false,
    this.shouldShowBottomButton = true,
    this.isSpacer = false,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: XColors.secondaryColor,
      body: SafeArea(
        child: Column(
          children: [
            GameBannerWidget().paddingOnly(left: 22,right: 22, top: 46,bottom: 24),
            isSpacer ? Spacer() : SizedBox(),
            child ?? SizedBox(),
          ],
        ),
      ),
      bottomNavigationBar: !shouldShowBottomButton ? null:  Container(
        decoration: BoxDecoration(
          color: shouldShowBottomsheetButton ? XColors.sheetColor : Colors.transparent,
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50),bottomRight: Radius.circular(50))
        ),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        child: Column(
          mainAxisSize: MainAxisSize.min, // Ensures it takes up only necessary space
          children: [
            if (shouldShowBottomsheetButton)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Keep going Buddy! ✌',style: TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),),
                  Image.asset(
                    ImageAsset.actions,
                    width: 96,
                    height: 24,
                  ),
                ],
              ),
              SizedBox(height: 16,),
            Row(
              children: [
                Expanded(
                  child: MainButton(
                    text: buttonText,
                    color: XColors.orange1,
                    onPressed: onPressed,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
