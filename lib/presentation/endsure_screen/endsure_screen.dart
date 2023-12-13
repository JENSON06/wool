import 'package:flutter/material.dart';import 'package:jenson_k_s_application1/core/app_export.dart';import 'package:jenson_k_s_application1/widgets/app_bar/appbar_image.dart';import 'package:jenson_k_s_application1/widgets/app_bar/appbar_subtitle.dart';import 'package:jenson_k_s_application1/widgets/app_bar/custom_app_bar.dart';import 'package:jenson_k_s_application1/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class EndsureScreen extends StatelessWidget {EndsureScreen({Key? key}) : super(key: key);

TextEditingController userThirteenController = TextEditingController();

TextEditingController nameController = TextEditingController();

TextEditingController idNoController = TextEditingController();

TextEditingController aadharNoController = TextEditingController();

TextEditingController nameController1 = TextEditingController();

TextEditingController nameController2 = TextEditingController();

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 30.v), child: Column(children: [CustomImageView(imagePath: ImageConstant.imgUser12, height: 68.v, width: 69.h), SizedBox(height: 30.v), Container(width: 336.h, padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 34.v), decoration: AppDecoration.outlineBlack.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Column(mainAxisSize: MainAxisSize.min, children: [_buildUserThirteen(context), SizedBox(height: 51.v), _buildName(context), SizedBox(height: 48.v), _buildIdNo(context), SizedBox(height: 50.v), _buildAadharNo(context), SizedBox(height: 51.v), _buildName1(context), SizedBox(height: 50.v), _buildName2(context)])), SizedBox(height: 36.v), SizedBox(height: 56.v, width: 227.h, child: Stack(alignment: Alignment.centerRight, children: [Align(alignment: Alignment.center, child: Container(height: 55.v, width: 227.h, decoration: BoxDecoration(color: theme.colorScheme.primary, borderRadius: BorderRadius.circular(15.h), border: Border.all(color: appTheme.black900, width: 1.h)))), Align(alignment: Alignment.centerRight, child: GestureDetector(onTap: () {onTapTxtSubmit(context);}, child: Padding(padding: EdgeInsets.only(right: 43.h), child: Text("Submit", style: theme.textTheme.displaySmall))))])), SizedBox(height: 5.v)]))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(centerTitle: true, title: SizedBox(height: 55.v, width: double.maxFinite, child: Stack(alignment: Alignment.centerRight, children: [Align(alignment: Alignment.bottomCenter, child: Padding(padding: EdgeInsets.only(top: 54.v), child: SizedBox(width: double.maxFinite, child: Divider()))), AppbarSubtitle(text: "Coal Enduser", margin: EdgeInsets.only(left: 90.h, top: 1.v, right: 61.h)), Align(alignment: Alignment.topLeft, child: GestureDetector(onTap: () {onTapSeventyNine(context);}, child: Container(margin: EdgeInsets.only(right: 302.h, bottom: 4.v), padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 15.v), decoration: AppDecoration.fillCyanA, child: Column(children: [SizedBox(height: 3.v), AppbarImage(imagePath: ImageConstant.imgShare)]))))])), styleType: Style.bgFill_2); } 
/// Section Widget
Widget _buildUserThirteen(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 1.h, right: 6.h), child: CustomTextFormField(controller: userThirteenController, hintText: "Name")); } 
/// Section Widget
Widget _buildName(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 7.h), child: CustomTextFormField(controller: nameController, hintText: "Phone No/ Email", textInputType: TextInputType.emailAddress)); } 
/// Section Widget
Widget _buildIdNo(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 7.h), child: CustomTextFormField(controller: idNoController, hintText: "ID No")); } 
/// Section Widget
Widget _buildAadharNo(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 7.h), child: CustomTextFormField(controller: aadharNoController, hintText: "Aadhar No")); } 
/// Section Widget
Widget _buildName1(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 7.h), child: CustomTextFormField(controller: nameController1, hintText: "Name of the Organization ")); } 
/// Section Widget
Widget _buildName2(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 7.h), child: CustomTextFormField(controller: nameController2, hintText: "companuy Name", textInputAction: TextInputAction.done)); } 
/// Navigates to the loginScreen when the action is triggered.
onTapSeventyNine(BuildContext context) { Navigator.pushNamed(context, AppRoutes.loginScreen); } 
/// Navigates to the homeoneScreen when the action is triggered.
onTapTxtSubmit(BuildContext context) { Navigator.pushNamed(context, AppRoutes.homeoneScreen); } 
 }
