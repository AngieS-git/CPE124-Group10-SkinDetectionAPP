import 'package:flutter/material.dart';
import 'package:screens_124/core/app_export.dart';

class SplasgScreen extends StatelessWidget {
  const SplasgScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.tealA10001,
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    height: 399.v,
                    width: 284.h,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgEllipse7,
                          height: 245.v,
                          width: 190.h,
                          alignment: Alignment.topRight,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgEllipse5BlueGray700,
                          height: 172.v,
                          width: 284.h,
                          alignment: Alignment.topCenter,
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 19.h),
                            child: Text(
                              "CHAEWON ",
                              style: TextStyle(
                                color: appTheme.teal900,
                                fontSize: 32.fSize,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgImage10,
                          height: 156.v,
                          width: 115.h,
                          alignment: Alignment.bottomLeft,
                          margin: EdgeInsets.only(
                            left: 47.h,
                            bottom: 47.v,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 66.v),
                SizedBox(
                  height: 468.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse8,
                        height: 468.v,
                        width: 360.h,
                        alignment: Alignment.center,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse9,
                        height: 173.v,
                        width: 273.h,
                        alignment: Alignment.topLeft,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
