import 'package:flutter/material.dart';import 'package:jenson_k_s_application1/core/app_export.dart';import 'package:jenson_k_s_application1/widgets/app_bar/appbar_subtitle.dart';import 'package:jenson_k_s_application1/widgets/app_bar/custom_app_bar.dart';import 'package:jenson_k_s_application1/widgets/custom_drop_down.dart';import 'package:jenson_k_s_application1/widgets/custom_outlined_button.dart';
// ignore_for_file: must_be_immutable
class GeofenceScreen extends StatelessWidget {GeofenceScreen({Key? key}) : super(key: key);

List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: SizedBox(width: double.maxFinite, child: Column(mainAxisSize: MainAxisSize.min, children: [_buildStack(context), Column(children: [Divider(), SizedBox(height: 745.v, width: double.maxFinite, child: Stack(alignment: Alignment.center, children: [CustomImageView(imagePath: ImageConstant.imgMap21, height: 745.v, width: 360.h, alignment: Alignment.center), Align(alignment: Alignment.center, child: SizedBox(height: 656.v, width: 339.h, child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.topLeft, child: Container(height: 140.v, width: 139.h, margin: EdgeInsets.only(top: 210.v), decoration: BoxDecoration(color: appTheme.teal400.withOpacity(0.5), borderRadius: BorderRadius.circular(70.h), border: Border.all(color: appTheme.teal400, width: 3.h)))), Align(alignment: Alignment.center, child: Padding(padding: EdgeInsets.only(left: 9.h), child: Column(mainAxisSize: MainAxisSize.min, children: [Align(alignment: Alignment.centerRight, child: Container(padding: EdgeInsets.all(5.h), decoration: AppDecoration.outlineBlack.copyWith(borderRadius: BorderRadiusStyle.roundedBorder15), child: Row(mainAxisAlignment: MainAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: [Padding(padding: EdgeInsets.only(top: 5.v), child: Text("Circle draw", style: CustomTextStyles.bodyMediumArefRuqaa14)), Container(height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(left: 9.h, top: 2.v, right: 2.h), decoration: BoxDecoration(color: theme.colorScheme.onPrimaryContainer.withOpacity(1), borderRadius: BorderRadius.circular(12.h), border: Border.all(color: theme.colorScheme.primary, width: 2.h)))]))), SizedBox(height: 23.v), _buildButton(context), Spacer(), _buildColumn(context), SizedBox(height: 65.v), _buildGeofence1(context)])))])))]))])])))); } 
/// Section Widget
Widget _buildStack(BuildContext context) { return SizedBox(height: 54.v, width: 359.h, child: Stack(alignment: Alignment.center, children: [CustomImageView(imagePath: ImageConstant.imgShare, height: 18.v, width: 12.h, alignment: Alignment.bottomLeft, margin: EdgeInsets.only(left: 23.h, bottom: 13.v)), CustomAppBar(height: 54.v, leadingWidth: 58.h, leading: Container(height: 51.v, width: 58.h, margin: EdgeInsets.only(top: 3.v), padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 13.v), decoration: AppDecoration.fillCyanA, child: Stack(alignment: Alignment.bottomCenter, children: [CustomImageView(imagePath: ImageConstant.imgShare, height: 18.v, width: 12.h, alignment: Alignment.bottomCenter, margin: EdgeInsets.only(top: 7.v)), CustomImageView(imagePath: ImageConstant.imgShare, height: 18.v, width: 12.h, alignment: Alignment.bottomCenter, margin: EdgeInsets.only(top: 4.v, bottom: 3.v), onTap: () {onTapImgShare(context);}), CustomImageView(imagePath: ImageConstant.imgArrowLeftCyanA400, height: 18.v, width: 12.h, alignment: Alignment.bottomCenter, margin: EdgeInsets.only(top: 4.v, bottom: 3.v))])), centerTitle: true, title: AppbarSubtitle(text: "Add Geofence"), styleType: Style.bgFill_1)])); } 
/// Section Widget
Widget _buildButton(BuildContext context) { return CustomOutlinedButton(height: 41.v, width: 121.h, text: "Custom draw", buttonStyle: CustomButtonStyles.outlineBlackTL151, buttonTextStyle: CustomTextStyles.bodyMediumArefRuqaa14, alignment: Alignment.centerRight); } 
/// Section Widget
Widget _buildButton1(BuildContext context) { return Expanded(child: CustomOutlinedButton(height: 32.v, text: "cancel", margin: EdgeInsets.only(right: 9.h), buttonStyle: CustomButtonStyles.outlineBlackTL152, buttonTextStyle: CustomTextStyles.bodyMediumArefRuqaa14)); } 
/// Section Widget
Widget _buildButton2(BuildContext context) { return Expanded(child: CustomOutlinedButton(height: 32.v, text: "Confirm", margin: EdgeInsets.only(left: 9.h), buttonStyle: CustomButtonStyles.outlineBlackTL153, buttonTextStyle: CustomTextStyles.bodyMediumArefRuqaa14)); } 
/// Section Widget
Widget _buildColumn(BuildContext context) { return Container(margin: EdgeInsets.only(right: 3.h), padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 11.v), decoration: AppDecoration.outlineBlack.copyWith(borderRadius: BorderRadiusStyle.roundedBorder15), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [Align(alignment: Alignment.centerRight, child: Padding(padding: EdgeInsets.only(left: 16.h, right: 2.h), child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [Text("Geofence 1", style: CustomTextStyles.bodyMediumArefRuqaa14), Spacer(), Text("edit", style: CustomTextStyles.bodyMediumArefRuqaa14), Padding(padding: EdgeInsets.only(left: 15.h), child: Text("delete", style: CustomTextStyles.bodyMediumArefRuqaa14))]))), SizedBox(height: 23.v), SizedBox(height: 56.v, width: 269.h, child: Stack(alignment: Alignment.bottomCenter, children: [Align(alignment: Alignment.topLeft, child: Padding(padding: EdgeInsets.only(left: 1.h), child: Text("Geofence name", style: CustomTextStyles.bodyMediumArefRuqaa14))), CustomDropDown(width: 269.h, icon: Container(margin: EdgeInsets.fromLTRB(30.h, 9.v, 10.h, 9.v), child: CustomImageView(imagePath: ImageConstant.imgArrowupBlack900, height: 11.v, width: 15.h)), hintText: "Group 1", hintStyle: CustomTextStyles.bodyMediumArefRuqaa14, alignment: Alignment.bottomCenter, items: dropdownItemList, contentPadding: EdgeInsets.only(left: 2.h), borderDecoration: DropDownStyleHelper.underLineBlack, filled: false, onChanged: (value) {})])), SizedBox(height: 21.v), Align(alignment: Alignment.center, child: Padding(padding: EdgeInsets.only(left: 16.h, right: 10.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [_buildButton1(context), _buildButton2(context)])))])); } 
/// Section Widget
Widget _buildButton3(BuildContext context) { return Expanded(child: CustomOutlinedButton(height: 46.v, text: "Geofence 1", margin: EdgeInsets.only(right: 13.h), buttonTextStyle: CustomTextStyles.bodyMediumArefRuqaa14)); } 
/// Section Widget
Widget _buildButton4(BuildContext context) { return Expanded(child: CustomOutlinedButton(height: 46.v, text: "Geofence 2", margin: EdgeInsets.only(left: 13.h), buttonStyle: CustomButtonStyles.outlineBlackTL151, buttonTextStyle: CustomTextStyles.bodyMediumArefRuqaa14)); } 
/// Section Widget
Widget _buildGeofence1(BuildContext context) { return Padding(padding: EdgeInsets.only(right: 3.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [_buildButton3(context), _buildButton4(context)])); } 

/// Navigates back to the previous screen.
onTapImgShare(BuildContext context) { Navigator.pop(context); } 
 }
