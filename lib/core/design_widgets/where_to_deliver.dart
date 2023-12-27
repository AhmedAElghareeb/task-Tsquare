import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderTapped extends StatefulWidget {
  const OrderTapped({super.key});

  @override
  State<OrderTapped> createState() => _OrderTappedState();
}

class _OrderTappedState extends State<OrderTapped> {
  int currentTap = 0; //my context of place to deliver

  List<String> titles = [
    "التوصيل",
    "في المنزل",
    "إستلام سفرة",
  ]; //title of place to deliver

  List<String> images = [
    "https://image.similarpng.com/very-thumbnail/2021/01/Delivery-service-with-car-on-transparent-background-PNG.png",
    "https://image.similarpng.com/very-thumbnail/2021/01/Delivery-service-with-car-on-transparent-background-PNG.png",
    "https://image.similarpng.com/very-thumbnail/2021/01/Delivery-service-with-car-on-transparent-background-PNG.png",
  ]; //images of place to deliver

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
        titles.length,
            (index) => InkWell(
          onTap: () {
            currentTap = index;
            setState(() {});
          }, //which place to deliver
          child: Column(
            children: [
              CircleAvatar(
                radius: 55.r,
                backgroundColor: currentTap == index ? Colors.orange : null,
                child: CircleAvatar(
                  radius: 52.r,
                  backgroundColor: Colors.white,
                  child: Image.network(
                    images[index],
                    fit: BoxFit.scaleDown,
                    width: 70.w,
                    height: 70.h,
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                titles[index],
                style: TextStyle(
                  color: currentTap == index ? Colors.orange : Colors.grey,
                  fontSize: 16.sp,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}