import 'package:excel_academy/app/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SubjectCardWidget extends StatelessWidget {
  final String title;
  final bool checkboxValue;
  final List<String> logos;
  final String description;
  final VoidCallback onCheckboxChanged;

  const SubjectCardWidget({
    super.key,
    required this.title,
    required this.checkboxValue,
    required this.logos,
    required this.description,
    required this.onCheckboxChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        color: XColors.sheetColor,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: XColors.subjectTitleColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 10,
                ),
              ),
              Spacer(),
              Container(
                height: 24,
                width: 24,
                decoration: BoxDecoration(
                  color:  XColors.homeCardUnselectBorder,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: XColors.checkBoxBorderColor)
                ),
                child: Center(
                  child: Checkbox(
                    fillColor: WidgetStateProperty.resolveWith((states) {
                      if (states.contains(WidgetState.selected)) {
                        return XColors
                            .homeCardUnselectBorder; // Background color when selected
                      }
                      return XColors
                          .homeCardUnselectBorder; // Background color when not selected
                    }),
                    side: BorderSide.none,
                    shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4), // Rounded edges for better aesthetics
                          ),
                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    
                    value: checkboxValue,
                    onChanged: (_) => onCheckboxChanged(),
                  ),
                ),
              ),
            ],
          ).paddingOnly(bottom: 10),
          Row(
            children: logos
                .map((logo) => Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Image.asset(
                        logo,
                        height: 20,
                        fit: BoxFit.cover,
                      ),
                    ))
                .toList(),
          ).paddingOnly(bottom: 12),
          Text(
            description,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
        ],
      ).paddingSymmetric(horizontal: 12, vertical: 12),
    );
  }
}
