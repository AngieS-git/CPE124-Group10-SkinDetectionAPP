import 'package:flutter/material.dart';
import 'package:screens_124/core/app_export.dart';
import 'package:screens_124/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class StartscansectionItemWidget extends StatelessWidget {
  const StartscansectionItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 130.h,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.all(0),
        color: appTheme.tealA100,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusStyle.roundedBorder4,
        ),
        child: Container(
          height: 93.v,
          width: 130.h,
          padding: EdgeInsets.symmetric(
            horizontal: 9.h,
            vertical: 8.v,
          ),
          decoration: AppDecoration.outlineBlack9001.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder4,
          ),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              CustomElevatedButton(
                height: 27.v,
                text: "START SCAN".toUpperCase(),
                margin: EdgeInsets.only(top: 8.v),
                buttonStyle: CustomButtonStyles.none,
                buttonTextStyle: theme.textTheme.titleMedium!,
                alignment: Alignment.topCenter,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgLucidescanface,
                height: 37.v,
                width: 39.h,
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.only(bottom: 11.v),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  "Scan your Skin",
                  style: TextStyle(
                    color: appTheme.gray500,
                    fontSize: 8.fSize,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
