import 'package:flutter/material.dart';
import 'package:screens_124/core/app_export.dart';
import 'package:screens_124/widgets/custom_text_form_field.dart';

class LoginPageScreen extends StatelessWidget {
  LoginPageScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController editTextController = TextEditingController();

  TextEditingController editTextController1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRectangle10,
                height: 45.v,
                width: 357.h,
              ),
              SizedBox(height: 51.v),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 57.h),
                child: Column(
                  children: [
                    Container(
                      height: 153.adaptSize,
                      width: 153.adaptSize,
                      padding: EdgeInsets.symmetric(
                        horizontal: 32.h,
                        vertical: 31.v,
                      ),
                      decoration: AppDecoration.fillCyan.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder76,
                      ),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgLock,
                        height: 90.v,
                        width: 88.h,
                        alignment: Alignment.center,
                      ),
                    ),
                    SizedBox(height: 23.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgSettings,
                      height: 23.v,
                      width: 95.h,
                    ),
                    SizedBox(height: 39.v),
                    CustomTextFormField(
                      controller: editTextController,
                    ),
                    SizedBox(height: 18.v),
                    CustomTextFormField(
                      controller: editTextController1,
                      textInputAction: TextInputAction.done,
                      obscureText: true,
                    ),
                    SizedBox(height: 3.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgTelevision,
                      height: 11.v,
                      width: 99.h,
                      alignment: Alignment.centerRight,
                    ),
                    SizedBox(height: 29.v),
                    Container(
                      height: 49.v,
                      width: 244.h,
                      padding: EdgeInsets.symmetric(vertical: 12.v),
                      decoration: AppDecoration.fillPrimary.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder4,
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Container(
                          margin: EdgeInsets.only(top: 5.v),
                        ),
                      ),
                    ),
                    SizedBox(height: 5.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgDonTHaveAnAccount,
                      height: 11.v,
                      width: 207.h,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
