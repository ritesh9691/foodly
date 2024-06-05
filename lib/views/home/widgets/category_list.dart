import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly_flutter/common/app_style.dart';
import 'package:foodly_flutter/constants/uidata.dart';
import 'package:foodly_flutter/controller/category_controller.dart';
import 'package:foodly_flutter/views/category/allCategory.dart';
import 'package:foodly_flutter/views/home/widgets/category_widget.dart';
import 'package:get/get.dart';

import '../../../constants/constants.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 80.h,
      padding: EdgeInsets.only(left: 12.w, top: 10.h),
      child: ListView(
          scrollDirection: Axis.horizontal,
          /// generate a list with the length
          children: List.generate(categories.length, (i) {
            var category = categories[i];

            return CategoryWidget(category:category,);
          })),
    );
  }
}
