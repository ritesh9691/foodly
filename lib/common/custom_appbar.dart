import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodly_flutter/common/app_style.dart';
import 'package:foodly_flutter/common/reusable_text.dart';
import 'package:foodly_flutter/constants/constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 12.w),
      width: width,
      height: 100,
      //koffwhite
      color: kOffWhite,
      child: Container(
        margin: const EdgeInsets.only(top: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CircleAvatar(
                  radius: 23.r,
                  backgroundColor: kSecondary,
                  backgroundImage:
                      const NetworkImage("https://i.pravatar.cc/150?img=5",),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 6.h, left: 8.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ReusableText(
                        text: "Deliver to",
                        applyStyle: appStyle(13, kSecondary, FontWeight.w600),
                      ),
                      SizedBox(
                        width: width * 0.65,
                        child: Text(
                          "H.no 56 Rk Enclave",
                          overflow: TextOverflow.ellipsis,
                          style: appStyle(11, kGrayLight, FontWeight.normal),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
             Text(
              getTimeNow(),
              style: const TextStyle(fontSize: 35),
            )
          ],
        ),
      ),
    );
  }
  String getTimeNow(){
    DateTime now  = DateTime.now();
    int hour = now.hour;
    if(hour >=0 && hour < 12){
      return "🌞";
    }else if(hour >=12 && hour <16){
      return "⛅";
    }else{
      return "🌃";
    }

  }
}
