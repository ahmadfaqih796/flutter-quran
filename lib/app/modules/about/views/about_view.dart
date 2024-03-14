import 'package:faqih_mobile/app/widget/basic_button.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/about_controller.dart';

class AboutView extends GetView<AboutController> {
  const AboutView({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AboutController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('AboutView'),
        centerTitle: true,
      ),
      body: Center(
        child: basicButton(
          title: 'fetch',
          onPressed: () => controller.fetchDummy(),
        ),
      ),
    );
  }
}
