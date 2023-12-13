import 'package:flutter/material.dart';import 'package:jenson_k_s_application1/core/app_export.dart';import 'package:jenson_k_s_application1/widgets/app_bar/appbar_subtitle_three.dart';import 'package:jenson_k_s_application1/widgets/app_bar/custom_app_bar.dart';import 'package:jenson_k_s_application1/widgets/custom_outlined_button.dart';import 'package:jenson_k_s_application1/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class VehicleToGeofenchScreen extends StatelessWidget {VehicleToGeofenchScreen({Key? key}) : super(key: key);

TextEditingController vehicleNoController = TextEditingController();

TextEditingController nameController = TextEditingController();

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: Form(key: _formKey, child: SizedBox(width: double.maxFinite, child: Column(mainAxisSize: MainAxisSize.min, children: [_buildLineNineStack(context), Expanded(child: Container(padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 60.v), child: Column(children: [_buildVehicleInfoColumn(context), Spacer(), SizedBox(height: 88.v), CustomOutlinedButton(height: 48.v, text: "Add", margin: EdgeInsets.symmetric(horizontal: 32.h), buttonTextStyle: CustomTextStyles.headlineSmallArefRuqaa)])))]))))); } 
/// Section Widget
Widget _buildLineNineStack(BuildContext context) { return SizedBox(height: 55.v, width: double.maxFinite, child: Stack(alignment: Alignment.bottomLeft, children: [Align(alignment: Alignment.bottomCenter, child: SizedBox(width: double.maxFinite, child: Divider())), CustomImageView(imagePath: ImageConstant.imgShare, height: 18.v, width: 12.h, alignment: Alignment.bottomLeft, margin: EdgeInsets.only(left: 23.h, bottom: 14.v)), CustomAppBar(leadingWidth: 39.h, leading: Container(height: 51.v, width: 39.h, margin: EdgeInsets.only(top: 4.v), padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 14.v), decoration: BoxDecoration(color: appTheme.cyanA400), child: Stack(alignment: Alignment.topCenter, children: [CustomImageView(imagePath: ImageConstant.imgArrowLeftCyanA400, height: 18.v, width: 8.h, alignment: Alignment.bottomCenter, margin: EdgeInsets.fromLTRB(11.h, 3.v, 11.h, 2.v), onTap: () {onTapImgArrowLeft(context);}), CustomImageView(imagePath: ImageConstant.imgShare, height: 18.v, width: 12.h, alignment: Alignment.topCenter, margin: EdgeInsets.only(left: 19.h, top: 5.v))])), title: AppbarSubtitleThree(text: "Suggest vehicle to Geofench"), styleType: Style.bgFill_1)])); } 
/// Section Widget
Widget _buildVehicleInfoColumn(BuildContext context) { return Container(width: 334.h, padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 18.v), decoration: AppDecoration.outlineBlack9007.copyWith(borderRadius: BorderRadiusStyle.roundedBorder15), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [Text("vehicle info", style: CustomTextStyles.titleLargeArefRuqaaRegular), SizedBox(height: 25.v), Padding(padding: EdgeInsets.only(left: 6.h, right: 19.h), child: CustomTextFormField(controller: vehicleNoController, hintText: "Vehicle No", hintStyle: CustomTextStyles.bodyLargeBlack900_1)), SizedBox(height: 31.v), Padding(padding: EdgeInsets.only(left: 6.h, right: 19.h), child: CustomTextFormField(controller: nameController, hintText: "Geofench name", hintStyle: CustomTextStyles.bodyLargeBlack900_1, textInputAction: TextInputAction.done)), SizedBox(height: 25.v)])); } 

/// Navigates back to the previous screen.
onTapImgArrowLeft(BuildContext context) { Navigator.pop(context); } 
 }
