import 'package:excel_academy/app/assets/assets.dart';
import 'package:excel_academy/app/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeCards extends StatelessWidget {
  final VoidCallback? onCardPress;
  final String? title;
  final String? subTitle;
  final String? desc;
  final bool isPlayerSelected;
  final Color? cardColor;
  final Color? borderColor;
    const HomeCards({super.key, this.onCardPress, this.title, this.subTitle, this.desc, this.isPlayerSelected = false, this.cardColor, this.borderColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onCardPress,
      child: Container(
        height: 150,
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
          color: cardColor,
          border: Border.all(color: isPlayerSelected?borderColor! : XColors.homeCardUnselectBorder, width: 3),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: Center(
                child: Image.asset(
                  ImageAsset.user,
                  width: 70,
                  height: 70,
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title??'Play with Zaraline (bot)',
                    maxLines: 2,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 4), // Spacing between texts
                  Text(
                    subTitle??'Quiz with a bot real-time and get scored to beat the highest scores',
                    style: TextStyle(color: XColors.text1Color),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4), // Spacing between texts
                  Text(
                    desc ??'',
                    style: TextStyle(color: XColors.text2Color, fontSize: 12),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ).paddingSymmetric(horizontal: 10),
      ),
    );
  }
}
