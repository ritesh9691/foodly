import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly_flutter/common/custom_appbar.dart';
import 'package:foodly_flutter/constants/constants.dart';

import '../../common/customContainer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kOffWhite ,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120.h),

        child: CustomAppBar(),
      ),
      body: CustomContainer(ContainerContent: Container(),)
    );
  }
}
