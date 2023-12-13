import 'package:flutter/material.dart';import 'package:jenson_k_s_application1/core/app_export.dart';import 'package:jenson_k_s_application1/widgets/custom_outlined_button.dart';import 'package:jenson_k_s_application1/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class LoginOneScreen extends StatelessWidget {LoginOneScreen({Key? key}) : super(key: key);

TextEditingController userIdController = TextEditingController();

TextEditingController passwordController = TextEditingController();

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(extendBody: true, extendBodyBehindAppBar: true, resizeToAvoidBottomInset: false, body: Container(width: mediaQueryData.size.width, height: mediaQueryData.size.height, decoration: BoxDecoration(image: DecorationImage(image: AssetImage(ImageConstant.imgLoginOne), fit: BoxFit.cover)), child: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 47.v), child: Column(children: [SizedBox(height: 78.v, width: 79.h, child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.center, child: Container(height: 77.v, width: 78.h, decoration: BoxDecoration(color: theme.colorScheme.onPrimaryContainer.withOpacity(1), borderRadius: BorderRadius.circular(39.h)))), CustomImageView(imagePath: ImageConstant.imgUser1, height: 78.v, width: 79.h, alignment: Alignment.center)])), SizedBox(height: 35.v), Container(decoration: AppDecoration.outlineBlack9002, child: Text("LOGIN", style: theme.textTheme.displayMedium)), Spacer(flex: 42), Padding(padding: EdgeInsets.only(left: 10.h, right: 12.h), child: CustomTextFormField(controller: userIdController, hintText: "User ID", hintStyle: CustomTextStyles.headlineSmallGray500, contentPadding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 14.v), borderDecoration: TextFormFieldStyleHelper.outlineBlackTL29, filled: true, fillColor: theme.colorScheme.onPrimaryContainer.withOpacity(1))), SizedBox(height: 60.v), Padding(padding: EdgeInsets.only(left: 10.h, right: 12.h), child: CustomTextFormField(controller: passwordController, hintText: "Password", hintStyle: CustomTextStyles.headlineSmallGray500, textInputAction: TextInputAction.done, textInputType: TextInputType.visiblePassword, obscureText: true, contentPadding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 14.v), borderDecoration: TextFormFieldStyleHelper.outlineBlackTL29, filled: true, fillColor: theme.colorScheme.onPrimaryContainer.withOpacity(1))), Spacer(flex: 57), CustomOutlinedButton(width: 112.h, text: "SUBMIT", buttonStyle: CustomButtonStyles.outlineBlackTL181, onPressed: () {onTapSUBMIT(context);}), SizedBox(height: 47.v), _buildClientTestimonials(context), SizedBox(height: 11.v)])))))); } 
/// Section Widget
Widget _buildClientTestimonials(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [GestureDetector(onTap: () {onTapTxtConfirmation(context);}, child: Padding(padding: EdgeInsets.only(bottom: 1.v), child: Text("Don’t have an account?  ", style: CustomTextStyles.titleLargeOnPrimaryContainer))), GestureDetector(onTap: () {onTapTxtSignUp(context);}, child: Padding(padding: EdgeInsets.only(left: 15.h), child: Text("Sign Up", style: CustomTextStyles.titleLargeOnPrimary)))]); } 
/// Navigates to the livestockScreen when the action is triggered.
onTapSUBMIT(BuildContext context) { Navigator.pushNamed(context, AppRoutes.livestockScreen); } 
/// Navigates to the singuponeTabContainerScreen when the action is triggered.
onTapTxtConfirmation(BuildContext context) { Navigator.pushNamed(context, AppRoutes.singuponeTabContainerScreen); } 
/// Navigates to the categoryScreen when the action is triggered.
onTapTxtSignUp(BuildContext context) { Navigator.pushNamed(context, AppRoutes.categoryScreen); } 
 }
