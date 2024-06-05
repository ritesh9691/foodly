import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:foodly_flutter/constants/constants.dart';
import 'package:foodly_flutter/views/cart/cart_page.dart';
import 'package:foodly_flutter/views/home/home_page.dart';
import 'package:foodly_flutter/views/profile/profile_page.dart';

import 'package:foodly_flutter/views/search/search.dart';
import 'package:get/get.dart';

import '../controller/tabController.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class EntryPiont extends StatelessWidget {
  EntryPiont({super.key});

  List<Widget> pageList = const [
    HomePage(),
    SearchPage(),
    CartPage(),
    ProfilePage(),

  ];
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(TabIndexController());
    return Obx(() => Scaffold(
          body: Stack(
            children: [
              pageList[controller.tabIndex.value],
              Align(
                alignment: Alignment.bottomCenter,
                child: Theme(
                  data: Theme.of(context).copyWith(canvasColor: kPrimary),
                  child: BottomNavigationBar(
                    onTap: (value) {
                      controller.tabIndex.value = value;

                      print(controller.tabIndex);
                    },
                    elevation: 0,
                    currentIndex: controller.tabIndex.value,
                    showSelectedLabels: false,
                    unselectedIconTheme:
                        const IconThemeData(color: Colors.black38),
                    selectedIconTheme: const IconThemeData(color: kSecondary),
                    items: [
                      BottomNavigationBarItem(
                          icon: controller.tabIndex.value == 0
                              ? const Icon(AntDesign.appstore1)
                              : const Icon(AntDesign.appstore_o),
                          label: "home"),
                      const BottomNavigationBarItem(
                          icon: Icon(Icons.search), label: "search"),
                      const BottomNavigationBarItem(
                          icon: Badge(
                              label: Text("1"),
                              child: Icon(FontAwesome.opencart)),
                          label: "category"),
                      BottomNavigationBarItem(
                          icon: controller.tabIndex.value == 3
                              ? const Icon(FontAwesome.user_circle)
                              : const Icon(FontAwesome.user_circle_o),
                          label: "profile"),

                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
