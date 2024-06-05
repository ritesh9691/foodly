import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly_flutter/controller/category_controller.dart';
import 'package:foodly_flutter/views/category/allCategory.dart';
import 'package:get/get.dart';

import '../../../common/app_style.dart';
import '../../../constants/constants.dart';

class CategoryWidget extends StatelessWidget {
   CategoryWidget({ required this.category ,super.key});
var category;
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(CategoryController());
    return  GestureDetector(
        onTap: () {
          /// in this case for the first time category value is empty string so the condition wont match
          /// print will not work here only for the first time
          if (controller.categoryvalue == category["_id"]) {
            print("Found category${controller.categoryvalue}");


            /// when the we will selected the category it will be match and removed .
            /// we will update it to empty so we can set new value of category and title
            controller.updateCategory = "";
            controller.updateTitle = "";
            print("Found category 3${controller.categoryvalue}");
          }
          else if (category["value"] == "more"){
            Get.to(()=>Allcategory(),
                transition: Transition.cupertino,
                duration: const Duration(milliseconds: 950)
            );
          }


          else {
            /// after the if statement the condition will come here and execute update title and category
            /// we will assign the title and category to them
            /// we can remove if statement it will still work believe me
            controller.updateCategory = category["_id"];
            controller.updateTitle = category["title"];
            print("Found category 2nd time${controller.categoryvalue}");
          }
        },

        /// wrap this  with obx you will be happy with this
        child: Obx(
              () => Container(
            width: width * 0.19,
            margin: EdgeInsets.only(right: 5.w),
            padding: EdgeInsets.only(top: 4.h),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                // color: Colors.red ,
                border: Border.all(
                    color: controller.categoryvalue == category["_id"]
                        ? kSecondary
                        : kOffWhite,
                    width: 1.w)),
            child: Column(
              children: [
                SizedBox(
                  height: 35.h,
                  child: Image.network(
                    category["imageUrl"],
                    fit: BoxFit.contain,
                  ),
                ),
                Text(
                  category["title"],
                  style: appStyle(12, kDark, FontWeight.normal),
                ),
              ],
            ),
          ),
        ));
  }
}
