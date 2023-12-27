import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/design_widgets/app_bar.dart';
import '../core/design_widgets/best_offer.dart';
import '../core/design_widgets/exclusive_offers.dart';
import '../core/design_widgets/find_menu_item.dart';
import '../core/design_widgets/where_to_deliver.dart';

ListView buildUi() {
  return ListView(
    //for spaces from right & left
    padding: EdgeInsetsDirectional.symmetric(
      horizontal: 10.w,
      vertical: 30.h,
    ),
    children: [
      //space form top
      SizedBox(
        height: 10.h,
      ),
      const TopWidget(), //appBar Widget
      SizedBox(
        height: 10.h,
      ),
      const OrderTapped(), //where to deliver
      SizedBox(
        height: 10.h,
      ),
      //exclusive offers
      Text(
        "عروض حصرية",
        style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height: 10.h,
      ),
      const HotOffers(), //exclusive offers
      SizedBox(
        height: 10.h,
      ),
      const FindMenu(), //find menu item
      SizedBox(
        height: 10.h,
      ),
      const BestOffers(), //best offer
    ],
  );
}