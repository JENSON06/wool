import 'package:flutter/material.dart';import 'package:jenson_k_s_application1/core/app_export.dart';import 'package:jenson_k_s_application1/widgets/app_bar/appbar_leading_image.dart';import 'package:jenson_k_s_application1/widgets/app_bar/appbar_title.dart';import 'package:jenson_k_s_application1/widgets/app_bar/custom_app_bar.dart';import 'package:jenson_k_s_application1/widgets/custom_drop_down.dart';import 'package:jenson_k_s_application1/widgets/custom_outlined_button.dart';import 'package:jenson_k_s_application1/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class AndroidLargeSevenScreen extends StatelessWidget {AndroidLargeSevenScreen({Key? key}) : super(key: key);

TextEditingController userProfileController = TextEditingController();

TextEditingController userProfileController1 = TextEditingController();

TextEditingController userProfileController2 = TextEditingController();

List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

TextEditingController userProfileController3 = TextEditingController();

List<String> dropdownItemList1 = ["Item One", "Item Two", "Item Three"];

TextEditingController androidLargeController = TextEditingController();

TextEditingController androidLargeController1 = TextEditingController();

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(extendBody: true, extendBodyBehindAppBar: true, resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Container(width: mediaQueryData.size.width, height: mediaQueryData.size.height, decoration: BoxDecoration(image: DecorationImage(image: AssetImage(ImageConstant.imgGroup477), fit: BoxFit.cover)), child: Form(key: _formKey, child: SingleChildScrollView(padding: EdgeInsets.only(top: 33.v), child: Padding(padding: EdgeInsets.symmetric(horizontal: 8.h), child: Column(children: [_buildUserProfile(context), SizedBox(height: 32.v), _buildUserProfile1(context), SizedBox(height: 32.v), _buildUserProfile2(context), SizedBox(height: 38.v), _buildTwentyNine(context), SizedBox(height: 33.v), Padding(padding: EdgeInsets.symmetric(horizontal: 11.h), child: CustomDropDown(icon: Container(margin: EdgeInsets.fromLTRB(30.h, 11.v, 19.h, 11.v), child: CustomImageView(imagePath: ImageConstant.imgArrowup, height: 13.v, width: 26.h)), hintText: "Willing to sell under", items: dropdownItemList1, onChanged: (value) {})), SizedBox(height: 40.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 15.h), child: Text("Bank Details ", style: theme.textTheme.bodyMedium))), SizedBox(height: 26.v), _buildAndroidLarge(context), SizedBox(height: 26.v), _buildAndroidLarge1(context), SizedBox(height: 54.v), _buildAndroidLarge2(context), SizedBox(height: 42.v), Divider(indent: 38.h, endIndent: 38.h)]))))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 89.v, leadingWidth: 62.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 43.h, top: 10.v, bottom: 10.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarTitle(text: "Producers")); } 
/// Section Widget
Widget _buildUserProfile(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 12.h, right: 11.h), child: CustomTextFormField(controller: userProfileController, hintText: "Enter your name", hintStyle: theme.textTheme.bodyMedium!)); } 
/// Section Widget
Widget _buildUserProfile1(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 12.h, right: 11.h), child: CustomTextFormField(controller: userProfileController1, hintText: "Enter mobile number", hintStyle: theme.textTheme.bodyMedium!, textInputType: TextInputType.phone)); } 
/// Section Widget
Widget _buildUserProfile2(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 12.h, right: 11.h), child: CustomTextFormField(controller: userProfileController2, hintText: "Enter your address", hintStyle: theme.textTheme.bodyMedium!)); } 
/// Section Widget
Widget _buildUserProfile3(BuildContext context) { return CustomTextFormField(controller: userProfileController3, hintText: "No of Breeds", hintStyle: theme.textTheme.bodyMedium!); } 
/// Section Widget
Widget _buildUserProfile4(BuildContext context) { return CustomOutlinedButton(width: 195.h, text: "Add another Breed", margin: EdgeInsets.only(left: 54.h), buttonStyle: CustomButtonStyles.outlineBlackTL18, buttonTextStyle: theme.textTheme.bodyMedium!, alignment: Alignment.centerLeft); } 
/// Section Widget
Widget _buildTwentyNine(BuildContext context) { return Container(padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 7.v), decoration: AppDecoration.outlineBlack900, child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.end, children: [SizedBox(height: 8.v), CustomDropDown(icon: Container(margin: EdgeInsets.fromLTRB(30.h, 14.v, 20.h, 14.v), child: CustomImageView(imagePath: ImageConstant.imgArrowup, height: 10.v, width: 26.h)), hintText: "Type of Breed", items: dropdownItemList, onChanged: (value) {}), SizedBox(height: 43.v), _buildUserProfile3(context), SizedBox(height: 37.v), Container(padding: EdgeInsets.all(2.h), decoration: AppDecoration.outlineBlack9001.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 8.v, bottom: 5.v), child: Text("Add image", style: theme.textTheme.bodyMedium)), CustomImageView(imagePath: ImageConstant.imgGallery1, height: 32.adaptSize, width: 32.adaptSize, radius: BorderRadius.circular(10.h), margin: EdgeInsets.only(top: 1.v, right: 5.h))])), SizedBox(height: 40.v), _buildUserProfile4(context)])); } 
/// Section Widget
Widget _buildAndroidLarge(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 15.h, right: 8.h), child: CustomTextFormField(controller: androidLargeController, hintText: "Enter Account Number", hintStyle: theme.textTheme.bodyMedium!, textInputType: TextInputType.number)); } 
/// Section Widget
Widget _buildAndroidLarge1(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 15.h, right: 8.h), child: CustomTextFormField(controller: androidLargeController1, hintText: "Enter IFSC code", hintStyle: theme.textTheme.bodyMedium!, textInputAction: TextInputAction.done)); } 
/// Section Widget
Widget _buildAndroidLarge2(BuildContext context) { return CustomOutlinedButton(width: 135.h, text: "Submit", buttonStyle: CustomButtonStyles.outlineBlackTL18, onPressed: () {onTapAndroidLarge(context);}); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
/// Navigates to the singuponeTabContainerScreen when the action is triggered.
onTapAndroidLarge(BuildContext context) { Navigator.pushNamed(context, AppRoutes.singuponeTabContainerScreen); } 
 }
