import 'package:excel_academy/app/assets/assets.dart';
import 'package:excel_academy/app/models/subject_model.dart';
import 'package:get/get.dart';

class SubjectsController extends GetxController {
  bool get isAnyCheckboxSelected => subjects.any((e) => e.checkboxValue == true);
  var subjects = <SubjectModel>[
    SubjectModel(
      title: 'ICAN',
      checkboxValue: false,
      logos: [ImageAsset.icanLogo2, ImageAsset.icanLogo1],
      description: 'Institute Chartered Accountants of Nigeria',
    ),
    SubjectModel(
      title: 'ACCA',
      checkboxValue: false,
      logos: [ImageAsset.accaLogo2, ImageAsset.accaLogo1],
      description: 'Association of Chartered Certified Accountants',
    ),
    SubjectModel(
      title: 'CITN',
      checkboxValue: false,
      logos: [ImageAsset.icanLogo2, ImageAsset.accaLogo2],
      description: 'Chartered Institute of Taxation of Nigeria',
    ),
    SubjectModel(
      title: 'CIMA',
      checkboxValue: false,
      logos: [ImageAsset.accaLogo2, ImageAsset.icanLogo2],
      description: 'Chartered Institute of Management Accountants (CIMA)',
    ),
    SubjectModel(
      title: 'CIBM',
      checkboxValue: false,
      logos: [ImageAsset.accaLogo2, ImageAsset.icanLogo2],
      description: 'Chartered Institute of Taxation of Nigeria',
    ),
    SubjectModel(
      title: 'ANAN',
      checkboxValue: false,
      logos: [ImageAsset.icanLogo2, ImageAsset.accaLogo2],
      description: 'Chartered Institute of Management Accountants (CIMA)',
    ),
    // Add more items as needed
  ].obs;

  void toggleCheckbox(int index) {
    subjects[index].checkboxValue = !subjects[index].checkboxValue;
    subjects.refresh();
  }
  
}
