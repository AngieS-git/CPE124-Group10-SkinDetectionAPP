import '../home_page_screen/widgets/startscansection_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:screens_124/core/app_export.dart';
import 'package:screens_124/widgets/custom_elevated_button.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({Key? key})
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
            child: SizedBox(
              height: SizeUtils.height,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse5,
                    height: 212.v,
                    width: 117.h,
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.only(top: 32.v),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse6,
                    height: 212.v,
                    width: 117.h,
                    alignment: Alignment.centerLeft,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse5BlueGray700,
                    height: 137.v,
                    width: 294.h,
                    alignment: Alignment.topRight,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 224.h,
                      margin: EdgeInsets.only(
                        left: 24.h,
                        top: 105.v,
                      ),
                      child: Text(
                        "Hello, [Name]\nHow can we \nhelp you?",
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: appTheme.teal900,
                          fontSize: 32.fSize,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle23,
                    height: 440.v,
                    width: 352.h,
                    alignment: Alignment.bottomCenter,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: EdgeInsets.only(left: 8.h),
                      padding: EdgeInsets.symmetric(
                        horizontal: 30.h,
                        vertical: 31.v,
                      ),
                      decoration: AppDecoration.fillOrange.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder30,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          _buildStartScanSection(context),
                          SizedBox(height: 50.v),
                          _buildSkinDiseasesSection(context),
                          SizedBox(height: 50.v),
                        ],
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle26,
                    height: 31.v,
                    width: 138.h,
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.only(top: 265.v),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgThumbpin,
                    height: 46.adaptSize,
                    width: 46.adaptSize,
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.only(
                      top: 257.v,
                      right: 126.h,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildStartScanSection(BuildContext context) {
    return SizedBox(
      height: 93.v,
      child: ListView.separated(
        padding: EdgeInsets.only(left: 2.h),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 30.h,
          );
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return StartscansectionItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildSkinDiseasesSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.only(right: 15.h),
              padding: EdgeInsets.symmetric(
                horizontal: 7.h,
                vertical: 8.v,
              ),
              decoration: AppDecoration.outlineBlack9002.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder4,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 5.v),
                  CustomElevatedButton(
                    height: 24.v,
                    text: "SKIN DISEASES".toUpperCase(),
                    buttonStyle: CustomButtonStyles.none,
                    buttonTextStyle: CustomTextStyles.titleMediumOnPrimary,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgFaSolidDisease,
                    height: 38.adaptSize,
                    width: 38.adaptSize,
                  ),
                  SizedBox(height: 3.v),
                  Text(
                    "Learn more about different Skin Diseases",
                    style: TextStyle(
                      color: appTheme.gray500,
                      fontSize: 5.fSize,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 15.h),
              padding: EdgeInsets.symmetric(
                horizontal: 11.h,
                vertical: 4.v,
              ),
              decoration: AppDecoration.outlineBlack9003.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder4,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 7.v),
                  CustomElevatedButton(
                    height: 24.v,
                    text: "TREATMENTS".toUpperCase(),
                    buttonStyle: CustomButtonStyles.none,
                    buttonTextStyle: CustomTextStyles.titleMediumOnPrimary,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgBiBandaidFill,
                    height: 34.v,
                    width: 33.h,
                  ),
                  SizedBox(height: 6.v),
                  SizedBox(
                    width: 106.h,
                    child: Text(
                      "Learn more about skin disease treatments \nand prevention",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: appTheme.gray500,
                        fontSize: 5.fSize,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
