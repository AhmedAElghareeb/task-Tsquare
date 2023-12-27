import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HotOffers extends StatefulWidget {
  const HotOffers({super.key});

  @override
  State<HotOffers> createState() => _HotOffersState();
}

class _HotOffersState extends State<HotOffers> {

  int currentIndex = 0; //my context of images

  List<String> offersImages = [
    "https://couponswala.com/blog/wp-content/uploads/2022/09/Food-Combo-Offers.jpg",
    "https://couponswala.com/blog/wp-content/uploads/2022/09/Food-Combo-Offers.jpg",
    "https://couponswala.com/blog/wp-content/uploads/2022/09/Food-Combo-Offers.jpg",
    "https://couponswala.com/blog/wp-content/uploads/2022/09/Food-Combo-Offers.jpg",
    "https://couponswala.com/blog/wp-content/uploads/2022/09/Food-Combo-Offers.jpg",
    "https://couponswala.com/blog/wp-content/uploads/2022/09/Food-Combo-Offers.jpg",
    "https://couponswala.com/blog/wp-content/uploads/2022/09/Food-Combo-Offers.jpg",
  ]; //images of offers

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: List.generate(
            offersImages.length,
                (index) => Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(
                  15.r,
                ),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Image.network(
                offersImages[index],
                height: 164.h,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
            ),
          ),
          options: CarouselOptions(
            height: 164.h,
            autoPlay: true,
            viewportFraction: 1,
            onPageChanged: (index, reason) {
              currentIndex = index;
              setState(() {});
            },
          ),
        ), //images of offers
        SizedBox(
          height: 10.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            offersImages.length,
                (index) => Padding(
              padding: EdgeInsetsDirectional.only(
                end: 6.w,
              ),
              child: Container(
                width: currentIndex == index ? 20.w : 5.w,
                height: currentIndex == index ? 10.h : 5.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(
                        currentIndex == index ? 17.r : 5.r),
                    color: currentIndex == index
                        ? Colors.orange
                        : Colors.grey.withOpacity(0.4)),
              ),
            ),
          ),
        ), //item count
      ],
    );
  }
}