import 'package:flutter/material.dart';
import 'package:screens_124/core/app_export.dart';
import 'package:screens_124/widgets/custom_elevated_button.dart';
import 'package:screens_124/widgets/custom_text_form_field.dart';

class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController passwordController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController newPassword1Controller = TextEditingController();

  TextEditingController newPassword2Controller = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: SizedBox(
                width: double.maxFinite,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 45.v,
                      width: 357.h,
                      margin: EdgeInsets.only(left: 1.h),
                      decoration: BoxDecoration(
                        color: appTheme.blueGray100,
                      ),
                    ),
                    SizedBox(height: 83.v),
                    Container(
                      width: 204.h,
                      margin: EdgeInsets.only(left: 49.h),
                      child: Text(
                        "FORGOT PASSWORD?",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: appTheme.teal900,
                          fontSize: 32.fSize,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    SizedBox(height: 21.v),
                    _buildPassword(context),
                    SizedBox(height: 9.v),
                    _buildEmail(context),
                    SizedBox(height: 9.v),
                    _buildNewPassword1(context),
                    SizedBox(height: 9.v),
                    _buildNewPassword2(context),
                    SizedBox(height: 33.v),
                    _buildResetAccount(context),
                    Spacer(),
                    SizedBox(height: 3.v),
                    Container(
                      height: 45.v,
                      width: 357.h,
                      margin: EdgeInsets.only(left: 1.h),
                      decoration: BoxDecoration(
                        color: appTheme.blueGray100,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 49.h),
      child: CustomTextFormField(
        width: 244.h,
        controller: passwordController,
        hintText: "Username",
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 49.h),
      child: CustomTextFormField(
        width: 244.h,
        controller: emailController,
        hintText: "E-mail",
        textInputType: TextInputType.emailAddress,
      ),
    );
  }

  /// Section Widget
  Widget _buildNewPassword1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 49.h),
      child: CustomTextFormField(
        width: 244.h,
        controller: newPassword1Controller,
        hintText: "New Password",
        textInputType: TextInputType.visiblePassword,
        obscureText: true,
      ),
    );
  }

  /// Section Widget
  Widget _buildNewPassword2(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 49.h),
      child: CustomTextFormField(
        width: 244.h,
        controller: newPassword2Controller,
        hintText: "Confirm New Password",
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        obscureText: true,
      ),
    );
  }

  /// Section Widget
  Widget _buildResetAccount(BuildContext context) {
    return CustomElevatedButton(
      width: 244.h,
      text: "RESET ACCOUNT",
      margin: EdgeInsets.only(left: 49.h),
      buttonStyle: CustomButtonStyles.fillPrimary,
    );
  }
}
