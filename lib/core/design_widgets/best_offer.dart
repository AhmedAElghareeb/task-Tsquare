import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BestOffers extends StatelessWidget {
  const BestOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "أفضل العروض",
              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
            ),
            InkWell(
              onTap: () {},
              child: Row(
                children: [
                  const Text(
                    "عرض الكل",
                    style: TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  const Icon(
                    Icons.arrow_forward,
                    color: Colors.orange,
                  ),
                ],
              ),
            ),
          ],
        ), //title
        SizedBox(
          height: 10.h,
        ),
        GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10.w,
            mainAxisSpacing: 10.h,
            childAspectRatio: 0.7,
          ),
          itemBuilder: (context, index) => Stack(
            children: [
              Container(
                margin: EdgeInsetsDirectional.only(top: 75.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(10.r),
                  color: Colors.grey.withOpacity(0.09),
                ),
                width: 200.w,
                child: Padding(
                  padding: EdgeInsetsDirectional.symmetric(horizontal: 5.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "صنية الحبايب",
                            style: TextStyle(
                                fontSize: 14.sp, fontWeight: FontWeight.bold),
                          ),
                          const Icon(
                            Icons.favorite_border,
                            color: Colors.red,
                          ),
                        ],
                      ),
                      const Divider(),
                      Text(
                        "1 ك كفته + 2 ك رز + 3 قطع دجاج+ 1 ك طرب أو 1 ك سجق",
                        style: TextStyle(fontSize: 12.sp, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 120.h,
                right: 0.w,
                left: 0.w,
                child: CircleAvatar(
                  radius: 75.r,
                  backgroundColor: Colors.transparent,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.circular(25.r)),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Image.network(
                      "https://media.cnn.com/api/v1/images/stellar/prod/160929101749-essential-spanish-dish-paella-phaidon.jpg?q=w_1900,h_1069,x_0,y_0,c_fill/h_618",
                      fit: BoxFit.fill,
                      width: 100.w,
                      height: 100.h,
                    ),
                  ),
                ),
              ),
            ],
          ),
          itemCount: 4,
        ), //item design
      ],
    );
  }
}