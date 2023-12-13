import 'package:flutter/material.dart';import 'package:jenson_k_s_application1/core/app_export.dart';import 'package:jenson_k_s_application1/widgets/app_bar/appbar_image.dart';import 'package:jenson_k_s_application1/widgets/app_bar/appbar_subtitle_two.dart';import 'package:jenson_k_s_application1/widgets/app_bar/custom_app_bar.dart';import 'package:jenson_k_s_application1/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class ManagerScreen extends StatelessWidget {ManagerScreen({Key? key}) : super(key: key);

TextEditingController nameEditTextSectionController = TextEditingController();

TextEditingController phoneEditTextSectionController = TextEditingController();

TextEditingController idNumberEditTextSectionController = TextEditingController();

TextEditingController aadharNumberEditTextSectionController = TextEditingController();

TextEditingController nameEditTextSectionController1 = TextEditingController();

TextEditingController locationEditTextSectionController = TextEditingController();

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: Form(key: _formKey, child: SizedBox(width: double.maxFinite, child: Column(mainAxisSize: MainAxisSize.min, children: [_buildAppBarSection(context), Container(padding: EdgeInsets.symmetric(vertical: 3.v), child: Column(children: [Divider(), SizedBox(height: 21.v), CustomImageView(imagePath: ImageConstant.imgUser12, height: 68.v, width: 69.h), SizedBox(height: 28.v), Container(width: 336.h, margin: EdgeInsets.symmetric(horizontal: 12.h), padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 34.v), decoration: AppDecoration.outlineBlack.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Column(mainAxisSize: MainAxisSize.min, children: [_buildNameEditTextSection(context), SizedBox(height: 51.v), _buildPhoneEditTextSection(context), SizedBox(height: 48.v), _buildIdNumberEditTextSection(context), SizedBox(height: 50.v), _buildAadharNumberEditTextSection(context), SizedBox(height: 51.v), _buildNameEditTextSection1(context), SizedBox(height: 48.v), _buildLocationEditTextSection(context), SizedBox(height: 17.v)])), SizedBox(height: 32.v), SizedBox(height: 57.v, width: 227.h, child: Stack(alignment: Alignment.topLeft, children: [Align(alignment: Alignment.center, child: GestureDetector(onTap: () {onTapView(context);}, child: Container(height: 55.v, width: 227.h, decoration: BoxDecoration(color: theme.colorScheme.primary, borderRadius: BorderRadius.circular(15.h), border: Border.all(color: appTheme.black900, width: 1.h))))), Align(alignment: Alignment.topLeft, child: Padding(padding: EdgeInsets.only(left: 52.h), child: Text("Submit", style: theme.textTheme.displaySmall)))])), SizedBox(height: 5.v)]))]))))); } 
/// Section Widget
Widget _buildAppBarSection(BuildContext context) { return SizedBox(height: 51.v, width: double.maxFinite, child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.centerLeft, child: Row(children: [GestureDetector(onTap: () {onTapFortyThree(context);}, child: Container(height: 51.v, width: 58.h, padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 15.v), decoration: AppDecoration.fillOnPrimaryContainer, child: CustomImageView(imagePath: ImageConstant.imgShare, height: 18.v, width: 12.h, alignment: Alignment.bottomCenter))), Padding(padding: EdgeInsets.only(top: 7.v), child: Text("Coal Mine Manager", style: CustomTextStyles.headlineLargeArefRuqaa))])), CustomAppBar(height: 51.v, leadingWidth: 58.h, leading: Container(padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 15.v), decoration: AppDecoration.fillCyanA, child: Column(children: [SizedBox(height: 3.v), AppbarImage(imagePath: ImageConstant.imgShare)])), title: AppbarSubtitleTwo(text: "Coal Mine Manager"), styleType: Style.bgFill_1)])); } 
/// Section Widget
Widget _buildNameEditTextSection(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 1.h, right: 6.h), child: CustomTextFormField(controller: nameEditTextSectionController, hintText: "Name")); } 
/// Section Widget
Widget _buildPhoneEditTextSection(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 7.h), child: CustomTextFormField(controller: phoneEditTextSectionController, hintText: "Phone No/ Email", textInputType: TextInputType.emailAddress)); } 
/// Section Widget
Widget _buildIdNumberEditTextSection(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 7.h), child: CustomTextFormField(controller: idNumberEditTextSectionController, hintText: "ID No")); } 
/// Section Widget
Widget _buildAadharNumberEditTextSection(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 7.h), child: CustomTextFormField(controller: aadharNumberEditTextSectionController, hintText: "Aadhar No")); } 
/// Section Widget
Widget _buildNameEditTextSection1(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 7.h), child: CustomTextFormField(controller: nameEditTextSectionController1, hintText: "Name of the Organization ")); } 
/// Section Widget
Widget _buildLocationEditTextSection(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 7.h), child: CustomTextFormField(controller: locationEditTextSectionController, hintText: "Location of Mine", textInputAction: TextInputAction.done)); } 
/// Navigates to the loginScreen when the action is triggered.
onTapFortyThree(BuildContext context) { Navigator.pushNamed(context, AppRoutes.loginScreen); } 
/// Navigates to the homeScreen when the action is triggered.
onTapView(BuildContext context) { Navigator.pushNamed(context, AppRoutes.homeScreen); } 
 }
