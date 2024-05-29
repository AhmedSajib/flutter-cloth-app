import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartItemsmples extends StatelessWidget {
  List imgList = [
    "Warm Jacket",
    "Black T-Shirt",
    "Black Pant",
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 0; i < imgList.length; i++)
          Container(
            height: 110.h,
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Checkbox(
                  activeColor: Color(0xFFFD725A),
                  value: true,
                  onChanged: (value) {},
                ),
                Container(
                  height: 70.h,
                  width: 70.w,
                  margin: EdgeInsets.only(right: 15),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 224, 224, 244),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset("assets/${imgList[i]}.png"),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.r),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        imgList[i],
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.black.withOpacity(0.7),
                        ),
                      ),
                      Text(
                        "Best Selling",
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.black.withOpacity(0.6),
                        ),
                      ),
                      Text(
                        "\$ 267.65",
                        style: TextStyle(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFFD725A),
                        ),
                      )
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.delete,
                        color: Colors.redAccent,
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(8).w,
                            decoration: BoxDecoration(
                              color: Color(0xFFF7F8FA),
                              borderRadius: BorderRadius.circular(20).w,
                            ),
                            child: Icon(
                              CupertinoIcons.minus,
                              size: 20.sp,
                              color: Colors.redAccent,
                            ),
                          ),
                          SizedBox(height: 5.h),
                          Text(
                            "01",
                            style: TextStyle(
                              fontSize: 17.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 5.h),
                          Container(
                            padding: EdgeInsets.all(8).w,
                            decoration: BoxDecoration(
                              color: Color(0xFFF7F8FA),
                              borderRadius: BorderRadius.circular(20).w,
                            ),
                            child: Icon(
                              CupertinoIcons.plus,
                              size: 20.sp,
                              color: Colors.redAccent,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
      ],
    );
  }
}
