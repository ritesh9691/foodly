import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:foodly_flutter/constants/constants.dart';
import 'package:get/get.dart';

import '../controller/tabController.dart';

class EntryPiont extends StatelessWidget {
  const EntryPiont({super.key});

  @override
  Widget build(BuildContext context) {
     final  controller = Get.put(TabIndexController());
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
            width: width,
            height: hieght,
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Theme(
                data: Theme.of(context).copyWith(canvasColor: kPrimary),
                child: BottomNavigationBar(
                      onTap: (value) {
                         controller.settabIndex = value;
                         print(controller.tabIndex);
                      },
                  currentIndex: controller.tabIndex,
                      showSelectedLabels: false,
                      unselectedIconTheme:
                          const IconThemeData(color: Colors.black38),
                      selectedIconTheme: const IconThemeData(color: kSecondary),
                      items: const [
                        BottomNavigationBarItem(
                            icon: Icon(Icons.home), label: "home"),
                        BottomNavigationBarItem(
                            icon: Icon(Icons.search), label: "search"),
                        BottomNavigationBarItem(
                            icon: Icon(Icons.category), label: "category"),
                        BottomNavigationBarItem(
                            icon: Icon(Icons.account_circle_rounded),
                            label: "profile"),
                      ],
                    ),
              ))
        ],
      ),
    );
  }
}
