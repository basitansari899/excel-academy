import 'package:excel_academy/app/theme/colors.dart';
import 'package:excel_academy/app/widgets/banner.dart';
import 'package:excel_academy/app/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainView extends StatelessWidget {
  final Widget? child;
  final VoidCallback? onPressed;
  final String? buttonText;
  final bool isSpacer;
  final bool showLeftLogo;
  const MainView(
      {super.key,
      this.child,
      this.onPressed,
      this.buttonText,
      this.showLeftLogo =true,
      this.isSpacer = false});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: XColors.secondaryColor,
      body: SafeArea(
        child: Column(
          children: [
            BannerWidget(shouldShowLeftLogo: showLeftLogo).paddingOnly(left: 22,right: 22, top: 46,bottom: 24),
            isSpacer ? Spacer() : SizedBox(),
            child?? SizedBox()
          ],
        ),
      ),
      bottomNavigationBar: Row(
        children: [
          Expanded(
            child: MainButton(
              text: buttonText,
              color: XColors.orange1,
              onPressed: onPressed,
            ),
          ),
        ],
      ).paddingSymmetric(horizontal: 24,vertical:24),
    );
  }
}
