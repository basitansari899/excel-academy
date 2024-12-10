import 'package:excel_academy/app/routes/app_pages.dart';
import 'package:excel_academy/app/widgets/main_view.dart';
import 'package:excel_academy/app/widgets/subject_card.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/subjects_controller.dart';

class SubjectsView extends GetView<SubjectsController> {
  const SubjectsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(()=>
       MainView(
        onPressed: controller.isAnyCheckboxSelected ? () => Get.toNamed(Routes.START_GAME): null,
        child: Expanded(
          child: Column(
            children: [
              SizedBox(
                height: 26,
              ),
              Expanded(
                child: GridView.builder(
                    itemCount: controller.subjects.length,
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      childAspectRatio: 0.8,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      final subject = controller.subjects[index];
                      return SubjectCardWidget(
                        title: subject.title,
                        checkboxValue: subject.checkboxValue,
                        logos: subject.logos,
                        description: subject.description,
                        onCheckboxChanged: () => controller.toggleCheckbox(index),
                      );
                    }),
              )
            ],
          ).paddingSymmetric(horizontal: 24),
        ),
      ),
    );
  }
}
