import 'package:faqih_mobile/app/models/dummy.model.dart';
import 'package:faqih_mobile/app/services/dummy.service.dart';
import 'package:get/get.dart';

class AboutController extends GetxController {
  var dummy = DummyModel().obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> fetchDummy() async {
    try {
      final res = await DummyService().getDummy();
      dummy.value = res;
      print(dummy.value.toJson());
    } catch (_) {}
  }
}
