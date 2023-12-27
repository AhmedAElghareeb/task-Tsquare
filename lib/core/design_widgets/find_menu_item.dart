import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FindMenu extends StatelessWidget {
  const FindMenu({super.key});

  @override
  Widget build(BuildContext context) {

    List<String> titles = [
      "عروض حصرية",
      "لشخص واحد",
      "للمشاركة",
      "أطباق جانبية وحلويات",
    ];

    List<String> tImages = [
      "https://media.cnn.com/api/v1/images/stellar/prod/160929101749-essential-spanish-dish-paella-phaidon.jpg?q=w_1900,h_1069,x_0,y_0,c_fill/h_618",
      "https://media.cnn.com/api/v1/images/stellar/prod/160929101749-essential-spanish-dish-paella-phaidon.jpg?q=w_1900,h_1069,x_0,y_0,c_fill/h_618",
      "https://media.cnn.com/api/v1/images/stellar/prod/160929101749-essential-spanish-dish-paella-phaidon.jpg?q=w_1900,h_1069,x_0,y_0,c_fill/h_618",
      "https://media.cnn.com/api/v1/images/stellar/prod/160929101749-essential-spanish-dish-paella-phaidon.jpg?q=w_1900,h_1069,x_0,y_0,c_fill/h_618",
    ]; //titles of menuImages

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "إستكشف القائمة",
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
          height: 200.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Column(
              children: [
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  width: 130.w,
                  height: 130.h,
                  margin: EdgeInsetsDirectional.symmetric(horizontal: 10.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(10.r),
                    border: Border.all(color: Colors.grey.withOpacity(0.5)),
                    color: Colors.grey.withOpacity(0.09),
                  ),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.circular(25.r),
                      ),
                      child: Image.network(
                        tImages[index],
                        fit: BoxFit.scaleDown,
                        width: 90.w,
                        height: 100.h,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  titles[index],
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            itemCount: titles.length,
          ),
        ), //images of menuItems
      ],
    );
  }
}