import 'package:excel_academy/app/assets/assets.dart';
import 'package:flutter/widgets.dart';

class GameBannerWidget extends StatelessWidget {
  final bool shouldShowLeftLogo;
  const GameBannerWidget({super.key, this.shouldShowLeftLogo = true});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Image.asset(ImageAsset.player1,width: 58,height: 100,),
      Spacer(),
      Image.asset(ImageAsset.score,width: 74,height: 74,),
      Spacer(),
      Image.asset(ImageAsset.player2,width: 58,height: 100,),

    ],);
  }
}