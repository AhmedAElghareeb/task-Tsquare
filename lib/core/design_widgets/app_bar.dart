import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopWidget extends StatelessWidget {
  const TopWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.menu_open,
          size: 27.r,
        ), //like drawer
        Container(
          height: 50.h,
          width: 280.w,
          margin: EdgeInsetsDirectional.only(
            start: 10.w,
          ),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadiusDirectional.circular(7.r),
          ),
          child: Row(
            children: [
              const Icon(
                Icons.location_on_outlined,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "حدد الموقع",
                    style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "احصل علي اسعار وعناصر للقائمة بصوره دقيقه وحصرية",
                    style: TextStyle(
                      fontSize: 7.sp,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  width: 60.w,
                  height: 30.h,
                  margin: EdgeInsetsDirectional.only(start: 22.w),
                  decoration: BoxDecoration(
                    color: Colors.orangeAccent.withOpacity(0.3),
                    borderRadius: BorderRadiusDirectional.circular(
                      7.r,
                    ),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "إختر",
                        style: TextStyle(color: Colors.orangeAccent),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.orangeAccent,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ), //center location finder
        Container(
          margin: EdgeInsetsDirectional.only(start: 12.w),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadiusDirectional.circular(7.r)),
          width: 50.w,
          height: 50.h,
          child: Icon(
            Icons.notifications_none_outlined,
            size: 30.r,
          ),
        ), //notifications
      ],
    );
  }
}