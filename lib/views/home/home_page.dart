import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly_flutter/common/custom_appbar.dart';
import 'package:foodly_flutter/constants/constants.dart';
import 'package:foodly_flutter/views/home/widgets/category_list.dart';

import '../../common/customContainer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:kPrimary,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120.h),

        child: CustomAppBar(),
      ),
      body: CustomContainer(ContainerContent: Column(
        children: [
          CategoryList(),
        ],
      ),)
    );
  }
}
