import 'package:cloth_app/screen/cart_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBottomSheet extends StatelessWidget {
  List sizes = [
    'S',
    'M',
    'L',
    'XL',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15, right: 15, bottom: 50).r,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30).r,
          topRight: Radius.circular(30).r,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 10.h),
          Container(
            height: 4.h,
            width: 50.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10).w,
            ),
          ),
          SizedBox(height: 20.h),
          Row(
            children: [
              Text(
                "Size  :",
                style: TextStyle(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(width: 30),
              for (int i = 0; i < sizes.length; i++)
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 8.r),
                  padding: EdgeInsets.all(8).w,
                  decoration: BoxDecoration(
                    color: Color(0xFFF7F8FA),
                    borderRadius: BorderRadius.circular(30).w,
                  ),
                  child: Text(
                    sizes[i],
                    style: TextStyle(
                      fontSize: 18.sp,
                    ),
                  ),
                )
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              Text(
                "Color :",
                style: TextStyle(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(width: 30.w),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 8.r),
                padding: EdgeInsets.all(15).w,
                decoration: BoxDecoration(
                  color: Color(0xFF031C3C),
                  borderRadius: BorderRadius.circular(20).w,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 8.r),
                padding: EdgeInsets.all(15).w,
                decoration: BoxDecoration(
                  color: Color(0xFF3BA48Df),
                  borderRadius: BorderRadius.circular(20).w,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 8.r),
                padding: EdgeInsets.all(15).w,
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(20).w,
                ),
              ),
            ],
          ),
          SizedBox(height: 10.h),
          Row(
            children: [
              Text(
                "Quantity :",
                style: TextStyle(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(width: 30.w),
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
          ),
          SizedBox(height: 40.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total Payment:",
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "\$265.67",
                style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(height: 30.h),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CartScreen(),
                  ));
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 100).r,
              decoration: BoxDecoration(
                color: Color(0xFFFD725A),
                borderRadius: BorderRadius.circular(40).w,
              ),
              child: Text(
                "Checkout",
                style: TextStyle(
                  fontSize: 17.sp,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1,
                  color: Colors.white.withOpacity(0.9),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
