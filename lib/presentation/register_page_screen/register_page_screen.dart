import 'package:flutter/material.dart';
import 'package:screens_124/core/app_export.dart';
import 'package:screens_124/widgets/custom_text_form_field.dart';

class RegisterPageScreen extends StatelessWidget {
  RegisterPageScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController fullNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController mobileNumberController = TextEditingController();

  TextEditingController userNameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController editTextController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 45.v,
                      width: 357.h,
                      decoration: BoxDecoration(
                        color: appTheme.blueGray100,
                      ),
                    ),
                    SizedBox(height: 35.v),
                    _buildRegisterForm(context),
                    SizedBox(height: 46.v),
                    Container(
                      height: 45.v,
                      width: 357.h,
                      decoration: BoxDecoration(
                        color: appTheme.blueGray100,
                      ),
                    ),
                    SizedBox(height: 3.v),
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
  Widget _buildRegisterForm(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 48.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 140.adaptSize,
            width: 140.adaptSize,
            margin: EdgeInsets.only(left: 52.h),
            padding: EdgeInsets.all(45.h),
            decoration: AppDecoration.fillCyan.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder70,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgPlus,
              height: 50.adaptSize,
              width: 50.adaptSize,
              alignment: Alignment.center,
            ),
          ),
          SizedBox(height: 20.v),
          Padding(
            padding: EdgeInsets.only(right: 17.h),
            child: CustomTextFormField(
              controller: fullNameController,
              hintText: "Full Name",
            ),
          ),
          SizedBox(height: 9.v),
          Padding(
            padding: EdgeInsets.only(right: 17.h),
            child: CustomTextFormField(
              controller: emailController,
              hintText: "E-mail",
              textInputType: TextInputType.emailAddress,
            ),
          ),
          SizedBox(height: 9.v),
          Padding(
            padding: EdgeInsets.only(right: 17.h),
            child: CustomTextFormField(
              controller: mobileNumberController,
              hintText: "Mobile Number",
              textInputType: TextInputType.phone,
            ),
          ),
          SizedBox(height: 9.v),
          Padding(
            padding: EdgeInsets.only(right: 17.h),
            child: CustomTextFormField(
              controller: userNameController,
              hintText: "Username",
            ),
          ),
          SizedBox(height: 9.v),
          Padding(
            padding: EdgeInsets.only(right: 17.h),
            child: CustomTextFormField(
              controller: passwordController,
              hintText: "Password",
              textInputType: TextInputType.visiblePassword,
              obscureText: true,
            ),
          ),
          SizedBox(height: 9.v),
          SizedBox(
            height: 32.v,
            width: 244.h,
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                CustomTextFormField(
                  width: 244.h,
                  controller: editTextController,
                  alignment: Alignment.topCenter,
                  obscureText: true,
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 6.h),
                    child: Text(
                      "Confirm Password",
                      style: TextStyle(
                        color: appTheme.teal900,
                        fontSize: 14.fSize,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 24.v),
          SizedBox(
            height: 49.v,
            width: 244.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "REGISTER",
                    style: TextStyle(
                      color: theme.colorScheme.onPrimaryContainer,
                      fontSize: 32.fSize,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                CustomTextFormField(
                  width: 244.h,
                  controller: confirmpasswordController,
                  textInputAction: TextInputAction.done,
                  alignment: Alignment.center,
                  borderDecoration: TextFormFieldStyleHelper.fillPrimary,
                  fillColor: theme.colorScheme.primary,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
