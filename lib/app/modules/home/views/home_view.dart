import 'package:faqih_mobile/app/modules/about/views/about_view.dart';
import 'package:faqih_mobile/app/widget/basic_button.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
        toolbarHeight: 60.2,
        toolbarOpacity: 0.8,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25)),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.settings),
            tooltip: 'Setting Icon',
            onPressed: () {
              showMenu(
                context: context,
                position: RelativeRect.fromLTRB(
                  MediaQuery.of(context).size.width,
                  kToolbarHeight,
                  0.0,
                  0.0,
                ),
                items: <PopupMenuEntry>[
                  const PopupMenuItem(
                    value: 1,
                    child: Text('About'),
                  ),
                  const PopupMenuItem(
                    value: 2,
                    child: Text('Settings'),
                  ),
                ],
              ).then((value) {
                if (value != null) {
                  switch (value) {
                    case 1:
                      Get.to(
                        () => const AboutView(),
                      );
                      break;
                    case 2:
                      break;
                  }
                }
              });
            },
          ),
        ],
        elevation: 0.00,
        backgroundColor: Colors.greenAccent[400],
      ),
      body: Center(
        child: basicButton(
          title: 'About',
          onPressed: () => Get.to(
            () => const AboutView(),
          ),
        ),
      ),
    );
  }
}
