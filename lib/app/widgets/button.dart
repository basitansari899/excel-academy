import 'package:excel_academy/app/theme/colors.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final String? text;
  final Color? color;
  final VoidCallback? onPressed;

  const MainButton({
    Key? key,
    required this.text,
    this.color, // Default color
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color?? XColors.orange1,
        foregroundColor: XColors.orange1,
        disabledBackgroundColor: XColors.disableBackgroundColor,
        minimumSize: const Size(48, 48),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        elevation: 2, // Optional default elevation
      ),
      child: Text(
        text??'CONTINUE',
        style: TextStyle(
          color: onPressed == null ? XColors.disableTextColor:Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
