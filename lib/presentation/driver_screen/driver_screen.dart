import 'package:flutter/material.dart';import 'package:jenson_k_s_application1/core/app_export.dart';import 'package:jenson_k_s_application1/widgets/app_bar/appbar_image.dart';import 'package:jenson_k_s_application1/widgets/app_bar/appbar_subtitle.dart';import 'package:jenson_k_s_application1/widgets/app_bar/custom_app_bar.dart';import 'package:jenson_k_s_application1/widgets/custom_icon_button.dart';import 'package:jenson_k_s_application1/widgets/custom_outlined_button.dart';import 'package:jenson_k_s_application1/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class DriverScreen extends StatelessWidget {DriverScreen({Key? key}) : super(key: key);

TextEditingController nameEditTextController = TextEditingController();

TextEditingController phoneNumberEditTextController = TextEditingController();

TextEditingController phoneNumberEditTextController1 = TextEditingController();

TextEditingController licenceNumberEditTextController = TextEditingController();

TextEditingController cardNumberEditTextController = TextEditingController();

TextEditingController cardNumberEditTextController1 = TextEditingController();

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: Form(key: _formKey, child: SizedBox(width: double.maxFinite, child: Column(mainAxisSize: MainAxisSize.min, children: [_buildShare(context), Column(mainAxisAlignment: MainAxisAlignment.center, children: [Divider(), SizedBox(height: 7.v), Align(alignment: Alignment.centerLeft, child: Container(height: 103.adaptSize, width: 103.adaptSize, margin: EdgeInsets.only(left: 117.h), child: Stack(alignment: Alignment.bottomRight, children: [CustomImageView(imagePath: ImageConstant.imgUser12, height: 103.adaptSize, width: 103.adaptSize, alignment: Alignment.center), CustomIconButton(height: 27.adaptSize, width: 27.adaptSize, alignment: Alignment.bottomRight, child: CustomImageView(imagePath: ImageConstant.imgPen1))]))), SizedBox(height: 1.v), SizedBox(height: 515.v, width: 336.h, child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.topLeft, child: Padding(padding: EdgeInsets.only(left: 111.h), child: Text("User Profile", style: CustomTextStyles.bodyMediumArefRuqaa))), Align(alignment: Alignment.center, child: Container(padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 39.v), decoration: AppDecoration.outlineBlack.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.end, children: [SizedBox(height: 8.v), _buildNameEditText(context), SizedBox(height: 49.v), _buildPhoneNumberEditText(context), SizedBox(height: 50.v), _buildPhoneNumberEditText1(context), SizedBox(height: 50.v), _buildLicenceNumberEditText(context), SizedBox(height: 49.v), _buildCardNumberEditText(context), SizedBox(height: 50.v), _buildCardNumberEditText1(context)])))])), SizedBox(height: 4.v), Text("Are you owner of the Vehicle", style: CustomTextStyles.titleLargeArefRuqaaRegular), SizedBox(height: 1.v), Padding(padding: EdgeInsets.only(left: 50.h, right: 39.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Container(height: 19.v, width: 82.h, margin: EdgeInsets.only(top: 1.v), child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.topCenter, child: Container(height: 14.v, width: 82.h, margin: EdgeInsets.only(top: 1.v), decoration: BoxDecoration(color: theme.colorScheme.primary, borderRadius: BorderRadius.circular(7.h), border: Border.all(color: appTheme.black900, width: 1.h)))), Align(alignment: Alignment.center, child: Text("Yes", style: CustomTextStyles.bodySmallArefRuqaa12_1))])), SizedBox(height: 19.v, width: 82.h, child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.center, child: Container(height: 14.v, width: 82.h, decoration: BoxDecoration(color: theme.colorScheme.primary, borderRadius: BorderRadius.circular(7.h), border: Border.all(color: appTheme.black900, width: 1.h)))), Align(alignment: Alignment.center, child: Text("No", style: CustomTextStyles.bodySmallArefRuqaa12_1))]))])), SizedBox(height: 3.v)])]))), bottomNavigationBar: _buildConfirmButton(context))); } 
/// Section Widget
Widget _buildShare(BuildContext context) { return SizedBox(height: 54.v, width: double.maxFinite, child: Stack(alignment: Alignment.center, children: [CustomImageView(imagePath: ImageConstant.imgShare, height: 18.v, width: 12.h, alignment: Alignment.bottomLeft, margin: EdgeInsets.only(left: 23.h, bottom: 13.v)), CustomAppBar(height: 54.v, leadingWidth: 58.h, leading: Container(margin: EdgeInsets.only(top: 1.v, bottom: 2.v), padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 15.v), decoration: AppDecoration.fillCyanA, child: Column(children: [SizedBox(height: 3.v), AppbarImage(imagePath: ImageConstant.imgArrowLeftCyanA400, onTap: () {onTapArrowLeft(context);})])), centerTitle: true, title: AppbarSubtitle(text: "Driver"), styleType: Style.bgFill_1)])); } 
/// Section Widget
Widget _buildNameEditText(BuildContext context) { return Padding(padding: EdgeInsets.only(right: 13.h), child: CustomTextFormField(controller: nameEditTextController, hintText: "Name", alignment: Alignment.centerLeft)); } 
/// Section Widget
Widget _buildPhoneNumberEditText(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 6.h, right: 7.h), child: CustomTextFormField(controller: phoneNumberEditTextController, hintText: "Phone Number 1", textInputType: TextInputType.phone)); } 
/// Section Widget
Widget _buildPhoneNumberEditText1(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 6.h, right: 7.h), child: CustomTextFormField(controller: phoneNumberEditTextController1, hintText: "Phone Number 2", textInputType: TextInputType.phone)); } 
/// Section Widget
Widget _buildLicenceNumberEditText(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 6.h, right: 7.h), child: CustomTextFormField(controller: licenceNumberEditTextController, hintText: "Licence Number", textInputType: TextInputType.number)); } 
/// Section Widget
Widget _buildCardNumberEditText(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 6.h, right: 7.h), child: CustomTextFormField(controller: cardNumberEditTextController, hintText: "Aadhar Card Number", textInputType: TextInputType.number)); } 
/// Section Widget
Widget _buildCardNumberEditText1(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 6.h, right: 7.h), child: CustomTextFormField(controller: cardNumberEditTextController1, hintText: "PAN Card Number", textInputAction: TextInputAction.done, textInputType: TextInputType.number)); } 
/// Section Widget
Widget _buildConfirmButton(BuildContext context) { return CustomOutlinedButton(height: 48.v, text: "Confirm", margin: EdgeInsets.only(left: 45.h, right: 45.h, bottom: 9.v), buttonStyle: CustomButtonStyles.outlineBlackTL154, buttonTextStyle: CustomTextStyles.headlineSmallArefRuqaa); } 

/// Navigates back to the previous screen.
onTapArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }
