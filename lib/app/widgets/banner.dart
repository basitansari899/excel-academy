import 'package:excel_academy/app/assets/assets.dart';
import 'package:flutter/widgets.dart';

class BannerWidget extends StatelessWidget {
  final bool shouldShowLeftLogo;
  const BannerWidget({super.key, this.shouldShowLeftLogo = true});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      shouldShowLeftLogo ? Image.asset(ImageAsset.secondaryLogo,width: 90,height: 60,) : SizedBox(),
      Spacer(),
      Image.asset(ImageAsset.logo,width: 90,height: 60,),

    ],);
  }
}